// JSPIN e ISPIN

// Tipos de quadros
mtype = {Payload, Data, Ack, Erro}

chan c1 = [1] of {mtype, bit}
chan c2 = [1] of {mtype, bit}

proctype arq_fsm(chan tx, rx) {
  bit M = 0
  bit N = 0
  int retry_counter = 0

  recvErr:
    printf("ARQ [recvErr]: recebeu UP|ERRO\n");
    goto Idle

  Idle:
    do
    // simula que existe sempre um payload a enviar
    :: tx!Data,N ->
      printf("ARQ [Idle]: recebeu UP|PAYLOAD, enviou DOWN|DATA com seq=%d\n", N);
      goto WaitAck

    :: rx?Data,eval(M) ->
      tx!Ack,M
      printf("ARQ [Idle]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", M);
      M = !M
      // c_up_notify!Payload
      printf("ARQ [Idle]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
      goto Idle

    :: rx?Data,eval(!M) ->
      tx!Ack,!M
      printf("ARQ [Idle]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", !M);
      goto Idle

    od

  WaitAck:
    do
    :: rx?Ack,eval(N) ->
      printf("ARQ [WaitAck]: recebeu DOWN|ACK com seq=%d\n", N);
      N = !N
      goto BackoffAck

    :: rx?Data,eval(M) ->
      tx!Ack,M
      printf("ARQ [WaitAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", M);
      M = !M
      // c_up_notify!Payload
      printf("ARQ [WaitAck]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
      goto WaitAck

    :: rx?Data,eval(!M) ->
      tx!Ack,!M
      printf("ARQ [WaitAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", !M);
      goto WaitAck

    :: rx?Ack,eval(!N) ->
      printf("ARQ [WaitAck]: recebeu DOWN|ACK com seq=%d\n", !N);
      if
      :: retry_counter == 3 ->
        M = 0
        N = 0
        retry_counter = 0
        // c_up_notify!Erro
        printf("ARQ [WaitAck]: notificou UP|ERRO\n");

        // para ser usado na formula
        OcorreuErro:
        goto Idle
      :: else ->
        retry_counter++
        printf("ARQ [WaitAck]: incrementou retry_counter\n");
        goto BackoffRelay
      fi

    :: timeout ->
      // Mesmo codigo do caso anterior
      printf("ARQ [WaitAck]: ocorreu TIMEOUT\n");
      if
      :: retry_counter == 3 ->
        M = 0
        N = 0
        retry_counter = 0
        // c_up_notify!Erro
        printf("ARQ [WaitAck]: notificou UP|ERRO\n");
        OcorreuErro
        goto Idle
      :: else ->
        retry_counter++
        printf("ARQ [WaitAck]: incrementou retry_counter\n");
        goto BackoffRelay
      fi

    od

  BackoffAck:
    do
    :: timeout ->
      printf("ARQ [BackoffAck]: ocorreu TIMEOUT\n");
      // ignorando o caso de ele ja enviar um novo
      // payload caso exista um pacote na fila
      goto Idle

    :: rx?Data,eval(M) ->
      tx!Ack,M
      printf("ARQ [BackoffAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", M);
      M = !M
      //c_up_notify!Payload
      printf("ARQ [BackoffAck]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
      goto BackoffAck

    // ADICIONADO
    //:: rx?Data,eval(!M) ->
    //  tx!Ack,!M
    //  printf("ARQ [BackoffAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", !M);
    //  goto BackoffAck

    od

  BackoffRelay:
    do
    :: timeout ->
      tx!Data,N
      printf("ARQ [BackoffRelay]: ocorreu TIMEOUT, enviou DOWN|DATA com seq=%d\n", N);
      goto WaitAck

    :: rx?Data,eval(M) ->
      tx!Ack,M
      printf("ARQ [BackoffRelay]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", M);
      M = !M
      //c_up_notify!Payload
      printf("ARQ [BackoffRelay]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
      goto BackoffRelay
    od
}


active proctype inicia() {
  run arq_fsm(c1, c2)
  run arq_fsm(c2, c1)

}

// Verifica se o transmissor sempre sabe do erro
// ltl check_err { [] ( arq_fsm@critical || ! p2@critical)}


