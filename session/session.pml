// JSPIN e ISPIN

// Tipos de quadros
mtype = {CR,CC,KR,KC,DR,DC,Data}

chan c1 = [1] of {mtype}
chan c2 = [1] of {mtype}
int x;

proctype session(chan tx, rx) {
  DISC:
  do
    ::tx!CR -> //start
      goto HAND1
    :: timeout -> 
       if
         ::rx?x //ignore receiving data
         ::empty(rx)
       fi
  od

  HAND1:
  do
    :: timeout ->
       if
         ::rx?x //ignore receiving data
         ::empty(rx)
       fi
       tx!CR
       goto HAND1
    :: rx?CR -> 
       tx!CC
       goto HAND2
    :: rx?CC -> 
       goto HAND3
  od

  HAND2:
  do
    :: timeout ->
       if
         ::rx?x //ignore receiving data
         ::empty(rx)
       fi
       tx!CR
       goto HAND1
    :: rx?CC -> 
       goto CON
    :: rx?DR-> 
       tx!DR
       goto HALF2
  od

  HAND3:
  do
    :: rx?CR -> 
       tx!CC
       goto CON
    :: timeout ->
       if
         ::rx?x //ignore receiving data
         ::empty(rx)
       fi
       tx!CR
       goto HAND1
  od

  CON:
  do
    :: tx!DR -> // close
       goto HALF1
    :: tx!Data // app?payload
    :: rx?Data // app!payload
    :: rx?KR -> 
       tx!KC
    :: rx?DR -> 
       tx!DR
       goto HALF2
    :: tx!KR ->
       goto CHECK
    :: timeout -> 
       if
         ::rx?x //ignore receiving data
         ::empty(rx)
       fi
       tx!CR
       goto HAND1
  od

  CHECK:
  do
    :: tx!Data // app?payload
    :: rx?KR -> 
       tx!KC
    :: rx?Data ->
       goto CON    
    :: rx?KC -> 
       goto CON
    :: rx?DR -> 
       tx!DR
       goto HALF2
    :: timeout -> 
       if
         ::rx?x //ignore receiving data
         ::empty(rx)
       fi
       tx!CR
       goto HAND1
  od

  HALF1:
  do
    :: rx?Data // app!payload
    :: rx?KR ->
       tx!DR
    :: rx?DR ->
       tx!DC
       goto DISC
    :: timeout -> 
       if
         ::rx?x //ignore receiving data
         ::empty(rx)
       fi
       goto DISC
  od

  HALF2:
  do
    :: rx?DR ->
       tx!DR
    :: rx?DC ->
       goto DISC
    :: timeout ->
        if
         ::rx?x //ignore receiving data
         ::empty(rx)
       fi
      goto DISC
  od
}


init {
  run session(c1,c2)
  run session(c2, c1)

}
