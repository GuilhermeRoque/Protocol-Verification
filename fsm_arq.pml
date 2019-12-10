// JSPIN e ISPIN

// Tipos de quadros
mtype = {Payload, Data, Ack, Erro}

// Dois canais (up e down) um para sessao e outro para framming

// vai precisar de 4 canais (2 down e 2 up)
chan c_sessao = [1] of {mtype}
chan c_framming = [1] of {mtype, bit} // recebe mtype e bit de sequencia

active proctype fsm_sessao() {

  send:
    c_sessao!Payload
    printf("sessao: enviou payload\n");
    goto wait

  wait:
    do
    :: c_sessao?Payload ->
      printf("sessao: recebeu payload\n");
      goto send

    :: c_sesssao?Erro ->
      printf("sessao: recebeu erro\n");
      goto send

    od
}

active proctype arq_fsm() {
  bit M = 0
  bit N = 0
  int retry_counter = 0
 
  Idle:
    do
    :: c_sessao?Payload ->
      c_framming!Data,N
      goto WaitAck

    :: c_framming?Data,eval(M) ->
      c_framming!Ack,M
      M = !M
      c_sessao?Payload
      goto Idle

    :: c_framming?Data,eval(!M) ->
      c_framming!Ack,!M
      goto Idle

    od

  WaitAck:
    do
    :: c_framming?Ack,eval(N) ->
      N = !N
      goto BackoffAck

    :: c_framming?Data,eval(M) ->
      c_framming!Ack,M
      M = !M
      c_sessao?Payload
      goto WaitAck

    :: c_framming?Data,eval(!M) ->
      c_framming!Ack,!M
      goto WaitAck

    :: c_framming?Ack,eval(!N) ->
      if
      :: retry_counter == 3 ->
        M = 0
        N = 0
        retry_counter = 0
        c_sessao!Erro
        goto Idle
      :: else ->
        retry_counter = retry_counter + 1
        goto BackoffRelay

    :: timeout ->
      // Mesmo codigo do caso anterior
      if
      :: retry_counter == 3 ->
        M = 0
        N = 0
        retry_counter = 0
        c_sessao!Erro
        goto Idle
      :: else ->
        retry_counter = retry_counter + 1
        goto BackoffRelay

    od

  BackoffAck:
    do
    :: timeout ->
      // ignorando o caso de ele ja enviar um novo
      // payload caso exista um pacote na fila
      goto Idle

    :: c_framming?Data,eval(M) ->
      c_framming!Ack,M
      M = !M
      c_sessao!Payload
      goto BackoffAck

    od

  BackoffRelay:
    do
    :: timeout ->
      c_framming!Data,N
      goto WaitAck
    :: c_framming?Data,eval(M) ->
      c_framming!Ack,M
      M = !M
      c_sessao!Payload
      goto BackoffRelay
    od
}

active proctype fsm_framming() {
  int M = 0

  do
  :: c_framming!Data,N ->
    printf("sessao: enviou payload\n");

  :: c_sessao?Payload ->
    printf("sessao: recebeu payload\n");

  :: c_sesssao?Erro ->
    printf("sessao: recebeu erro\n");

  od
}

active proctype fsm_framming() {
  int seq = 0

  send:
    do
    :: c_framming!Data,seq ->
      printf("framming: enviou data com seq=%d\n", seq);
      goto wait

    :: c_framming!Data,!seq
      printf("framming: enviou data com seq=%d\n", !seq);
      goto wait

    od

  wait:
    do
    :: c_framming?Data,eval(seq) ->
      printf("framming: recebeu data com seq=%d\n", seq);
      goto send

    :: c_framming?Data,eval(seq) ->
      printf("framming: recebeu data com seq=%d\n", seq);
      goto send

    od
}