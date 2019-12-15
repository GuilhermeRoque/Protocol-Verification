mtype = {flag, esc, data}
chan tx = [1] of {byte}

active proctype fram_Tx(){   //Envio
  int _nbytes;
 
inicio:
    tx!flag;
    _nbytes = 0;

    do
    :: tx!data -> 
        _nbytes++
    :: tx!esc ->
        tx!data
        _nbytes++
    :: _nbytes > 0 ->
        tx!flag;
        goto inicio
    od

}

active proctype fram_Rx(){   //Recepção
    bool frame;
    int _nbytes;
    int _max_bytes = 1024;

Idle:                       //Estado Ocioso
    _nbytes = 0;
    frame = false;
    do            
        :: tx?esc ->                                    //se (byte == escape), _state = Idle
            printf("[Idle]: recebeu byte esc -> [Idle]\n")
            goto Idle;
        :: tx?data -> goto Idle;                        //se (byte == data), _state = Idle
            printf("[Idle]: recebeu byte data -> [Idle]\n")
            goto Idle;
        :: tx?flag ->                                   //se (byte == flag), _state = RX 
            printf("[Idle]: recebeu byte flag -> [RX]\n")
            goto RX;
    od

RX:                         //Estado RX
    do
        :: tx?esc ->                                    //se (byte == escape), _state = ESC
            printf("[RX]: recebeu byte esc -> [ESC]\n")
            goto ESC;
        :: tx?flag ->                                   //se (byte == flag)
            if
                :: (_nbytes > 0) ->                     //se (_nbytes > 0), frame = true, _state = Idle
                printf("[RX]: recebeu byte flag e (_nbytes > 0) -> [Idle]\n")
                frame = true; 
                goto Idle;                
                :: else ->                              //senão, _state = RX
                printf("[RX]: recebeu byte flag e (_nbytes = 0) -> [RX]\n")   
                goto RX;                                         
            fi   
        :: timeout ->                                   //se ocorrer timeout, _state = Idle                                              
            printf("[RX]: recebeu timeout \n")
            goto Idle;
        :: tx?data  ->                                  //se (byte == data)
            if
                :: (_nbytes < _max_bytes) ->            //se (_nbytes < _max_bytes), frame = true
                printf("[RX]: recebeu byte data e (_nbytes < _max_bytes) -> [RX]\n")
                _nbytes++; 
                goto RX;  
                :: else ->                              //senão, _state = Idle
                printf("[RX]: recebeu byte data e (_nbytes = _max_bytes) -> [Idle]\n")
                goto Idle;                                       
            fi
    od

ESC:	                    //Estado de escape    
    do
        :: tx?data ->                                   //se (byte == flag), _nbytes++;, _state = RX
            printf("[ESC]: recebeu byte data -> [RX]\n")
            _nbytes++; 
            goto RX; 
        :: tx?flag ->                                   //se (byte == flag), _state = Idle
            printf("[ESC]: recebeu byte flag -> [Idle]\n")
            goto Idle;
        :: tx?esc ->                                    //se (byte == escape), _state = Idle
            printf("[ESC]: recebeu byte esc -> [Idle]\n")
            goto Idle;
        :: timeout ->                                   //se (timeout), _state = Idle
            printf("[ESC]: recebeu timeout -> [Idle]\n")
            goto Idle;
    od
}

//Perdas de sincronismo no enquadramento são recuperadas em algum momento futuro
ltl verifica { [] <> (fram_Rx:frame == true) }
//ltl verifica { <> (frame == true) }
