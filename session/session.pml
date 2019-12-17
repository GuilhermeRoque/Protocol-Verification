// JSPIN e ISPIN

// Tipos de quadros
mtype = {CR,CC,KR,KC,DR,DC,Data}

chan c1 = [1] of {mtype}
chan c2 = [1] of {mtype}
int x;

bool state1 = false
bool state2 = false

proctype session(chan tx, rx; bool state) {
  DISC:
  state = false
  do
    ::tx!CR -> //start
      goto HAND1

    ::rx?CR
    ::rx?CC
    ::rx?KR
    ::rx?KC
    ::rx?DR
    ::rx?DC
    ::rx?Data
  od

  HAND1:
  do
    :: timeout ->
       tx!CR
       goto HAND1
    :: rx?CR -> 
       tx!CC
       goto HAND2
    :: rx?CC -> 
       goto HAND3

    ::rx?KR
    ::rx?KC
    ::rx?DR
    ::rx?DC
    ::rx?Data

  od

  HAND2:
  do
    :: timeout ->
       tx!CR
       goto HAND1
    :: rx?CC -> 
       goto CON
    :: rx?DR-> 
       tx!DR
       goto HALF2

    ::rx?CR
    ::rx?KR
    ::rx?KC
    ::rx?DC
    ::rx?Data

  od

  HAND3:
  do
    :: rx?CR -> 
       tx!CC
       goto CON
    :: timeout ->
       tx!CR
       goto HAND1

    ::rx?CC
    ::rx?KR
    ::rx?KC
    ::rx?DR
    ::rx?DC
    ::rx?Data

  od

  CON:
  state = true
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
       tx!CR
       goto HAND1

    ::rx?CR
    ::rx?CC
    ::rx?KC
    ::rx?DC

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
       goto HAND1

    ::rx?CR
    ::rx?CC
    ::rx?DC

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
       goto DISC

    ::rx?CR
    ::rx?CC
    ::rx?KC
    ::rx?DC

  od

  HALF2:
  do
    :: rx?DR ->
       tx!DR
    :: rx?DC ->
       goto DISC
    :: timeout ->
       goto DISC

    ::rx?CR
    ::rx?CC
    ::rx?KR
    ::rx?KC
    ::rx?Data
  od
}


init {
  run session(c1,c2, state1)
  run session(c2, c1, state2)

}
ltl conect { [] <> ((state1 == true)&&(state2 == true)) }
ltl disconect { [] <> ((state1 == false)&&(state2 == false)) }
