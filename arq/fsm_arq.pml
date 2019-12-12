// JSPIN e ISPIN

// Tipos de quadros
mtype = {Payload, Data, Ack, Erro}

// vai precisar de 4 canais (2 down e 2 up)
chan c_up_notify = [1] of {mtype}
chan c_up_recv = [1] of {mtype}
chan c_down_notify = [1] of {mtype, bit} // recebe mtype e bit de sequencia
chan c_down_recv = [1] of {mtype, bit}


active proctype arq_fsm() {
  bit M = 0
  bit N = 0
  int retry_counter = 0

  Idle:
    do
    :: c_up_recv?Payload ->
      c_down_notify!Data,N
      printf("ARQ [Idle]: recebeu UP|PAYLOAD, enviou DOWN|DATA com seq=%d\n", N);
      goto WaitAck

    :: c_down_recv?Data,eval(M) ->
      c_down_notify!Ack,M
      printf("ARQ [Idle]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", M);
      M = !M
      c_up_notify!Payload
      printf("ARQ [Idle]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
      goto Idle

    :: c_down_recv?Data,eval(!M) ->
      c_down_notify!Ack,!M
      printf("ARQ [Idle]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", !M);
      goto Idle

    od

  WaitAck:
    do
    :: c_down_recv?Ack,eval(N) ->
      printf("ARQ [WaitAck]: recebeu DOWN|ACK com seq=%d\n", N);
      N = !N
      goto BackoffAck

    :: c_down_recv?Data,eval(M) ->
      c_down_notify!Ack,M
      printf("ARQ [WaitAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", M);
      M = !M
      c_up_notify!Payload
      printf("ARQ [WaitAck]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
      goto WaitAck

    :: c_down_recv?Data,eval(!M) ->
      c_down_notify!Ack,!M
      printf("ARQ [WaitAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", !M);
      goto WaitAck

    :: c_down_recv?Ack,eval(!N) ->
      printf("ARQ [WaitAck]: recebeu DOWN|ACK com seq=%d\n", !N);
      if
      :: retry_counter == 3 ->
        M = 0
        N = 0
        retry_counter = 0
        c_up_notify!Erro
        printf("ARQ [WaitAck]: notificou UP|ERRO\n");
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
        c_up_notify!Erro
        printf("ARQ [WaitAck]: notificou UP|ERRO\n");
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

    :: c_down_recv?Data,eval(M) ->
      c_down_notify!Ack,M
      printf("ARQ [BackoffAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", M);
      M = !M
      c_up_notify!Payload
      printf("ARQ [BackoffAck]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
      goto BackoffAck

    // ADICIONADO
    :: c_down_recv?Data,eval(!M) ->
      c_down_notify!Ack,!M
      printf("ARQ [BackoffAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", !M);
      goto BackoffAck

    od

  BackoffRelay:
    do
    :: timeout ->
      c_down_notify!Data,N
      printf("ARQ [BackoffRelay]: ocorreu TIMEOUT, enviou DOWN|DATA com seq=%d\n", N);
      goto WaitAck

    :: c_down_recv?Data,eval(M) ->
      c_down_notify!Ack,M
      printf("ARQ [BackoffRelay]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", M);
      M = !M
      c_up_notify!Payload
      printf("ARQ [BackoffRelay]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
      goto BackoffRelay
    od
}

active proctype fsm_framming() {
  bit seq = 0
  bit data_seq = 0

  // inicia enviando um payload
  c_up_recv!Payload
  printf("TEST [INIT]: enviou PAYLOAD\n")

  waitDown:
    do
    :: c_down_notify?Data,seq ->
      printf("TEST [waitDown]: recebeu DATA com seq=%d\n", seq);
      goto sendAck

    od

  sendAck:
    do
    :: c_down_recv!Ack,seq ->
      printf("TEST [sendAck]: enviou ACK com seq=%d\n", seq);
      goto doSomething

    // ack com seq errado, deve receber erro no up
    :: c_down_recv!Ack,!seq ->
      printf("TEST [sendAck]: enviou ACK com !seq=%d\n", !seq);
      goto waitUp

    // pode nao mandar o ack, neste caso deve receber erro no up
    :: timeout ->
      printf("TEST [sendAck]: timeout\n");
      goto waitUp

    od


  waitAck:
    do
    :: c_down_notify?Ack,eval(data_seq) ->
      printf("TEST [waitAck]: recebeu ACK com data_seq=%d\n", data_seq);
      data_seq = !data_seq
      goto doSomething

    :: c_down_notify?Ack,eval(!data_seq) ->
      printf("TEST [waitAck]: recebeu ACK com !data_seq=%d\n", !data_seq);
      goto doSomething
    od

  waitUp:
    do
    :: c_up_notify?Payload ->
      printf("TEST [waitUp]: recebeu PAYLOAD\n");
      goto doSomething

    :: c_up_notify?Erro ->
      printf("TEST [waitUp]: recebeu ERRO\n");
      goto doSomething

    od


  doSomething:
    do

    // envia data com seq correto
    :: c_down_recv!Data,data_seq ->
      printf("TEST [doSomething]: enviou DATA com data_seq=%d\n", data_seq);
      goto waitAck

    // envia data com seq invalido
    :: c_down_recv!Data,!data_seq ->
      printf("TEST [doSomething]: enviou DATA com !data_seq=%d\n", !data_seq);
      goto waitAck

    :: c_up_recv!Payload ->
      printf("TEST [doSomething]: enviou PAYLOAD\n")
      goto waitDown

    od
}