mtype = {flag, esc, data}
chan tx = [1] of {byte}
 
active proctype fram_Tx(){   //Envio
    int cnt

inicio:
    tx!flag
    cnt = 0;
    printf("\n[TX]: flag cnt = %d ",cnt);

    do
    :: tx!data ->  
        printf("\n[TX]: data cnt = %d ",cnt); 
        cnt++
    :: tx!esc ->
        tx!data
        printf("\n[TX]: esc e data cnt = %d ",cnt); 
        cnt++
    :: cnt > 0 ->
        tx!flag
        printf("\n[TX]: flag cnt = %d ",cnt);
        goto inicio
    od
}

active proctype fram_Rx(){   //Recepção
    bool frame;
    int _nbytes = 0;
    int _max_bytes = 1024;

Idle:                       //Estado Ocioso
frame = false;
    do            
        :: tx?esc ->                                    //se (byte == escape), _state = Idle
            printf("\n[Idle]: recebeu byte esc -> [Idle]")
            goto Idle;
        :: tx?data -> goto Idle;                        //se (byte == data), _state = Idle
            printf("\n[Idle]: recebeu byte data -> [Idle]")
            goto Idle;
        :: tx?flag ->                                   //se (byte == flag), _state = RX 
            printf("\n[Idle]: recebeu byte flag -> [RX]")
            _nbytes = 0; 
            goto RX;
    od

RX:                         //Estado RX
frame = false;
    do
        :: tx?esc ->                                    //se (byte == escape), _state = ESC
            printf("\n[RX]: recebeu byte esc -> [ESC]")
            goto ESC;
        :: tx?flag ->                                   //se (byte == flag)
            if
                :: (_nbytes > 0) ->                     //se (_nbytes > 0), frame = true, _state = Idle
                frame = true;
                printf("\n[RX]: recebeu byte flag e (_nbytes > 0) -> [Idle] [FRAME COMPLETO]")
                goto Idle;                
                :: else ->                              //senão, _state = RX
                printf("\n[RX]: recebeu byte flag e (_nbytes = 0) -> [RX]")   
                goto RX;                                         
            fi   
        :: timeout ->                                   //se ocorrer timeout, _state = Idle                                              
            printf("\n[RX]: recebeu timeout ")
            goto Idle;
        :: tx?data  ->                                  //se (byte == data)
            if
                :: (_nbytes < _max_bytes) ->            //se (_nbytes < _max_bytes), _nbytes++
                // printf("\n[RX]: recebeu byte data e (_nbytes < _max_bytes) -> [RX]")
                _nbytes = _nbytes+1; 
                goto RX;  
                :: else ->                              //senão, _state = Idle
                // printf("\n[RX]: recebeu byte data e (_nbytes = _max_bytes) -> [Idle]")
                goto Idle;                                       
            fi
    od

ESC:	                    //Estado de escape    
frame = false;
    do
        :: tx?data ->                                   //se (byte == flag), _nbytes++;, _state = RX
            printf("\n[ESC]: recebeu byte data -> [RX]")
            _nbytes = _nbytes+1; 
            goto RX; 
        :: tx?flag ->                                   //se (byte == flag), _state = Idle
            printf("\n[ESC]: recebeu byte flag -> [Idle]")
            goto Idle;
        :: tx?esc ->                                    //se (byte == escape), _state = Idle
            printf("\n[ESC]: recebeu byte esc -> [Idle]")
            goto Idle;
        :: timeout ->                                   //se (timeout), _state = Idle
            printf("\n[ESC]: recebeu timeout -> [Idle]")
            goto Idle;
    od
}

//Perdas de sincronismo no enquadramento são recuperadas em algum momento futuro
ltl verifica { [] <> (fram_Rx:frame == true) }
