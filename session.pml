#define CR 0
#define CC 1
#define KR 2
#define KC 3
#define DR 4
#define DC 5
#define Error 6
#define Start 7
#define Stop 8
#define Payload 9

chan self_notify = [1] of {int}
chan self_send = [1] of {int}

chan notify = [1] of {int}
chan send = [1] of {int}

active proctype ARQ() {
  int x 

  DISC:
  do
    :: x == 0 -> goto DISC
  od
 
}

active proctype App() {
  int x 

  DISC:
  do
    :: x == 0 -> goto DISC
  od
 
}

active proctype session() {
  int x 

  DISC:
  do
    :: self_send?Start -> 
      send!CR
      goto HAND1
  od
 
  HAND1:
  do
    :: self_notify?Error -> 
      send!CR
      goto HAND1
    :: self_notify?CR -> 
      send!CC
      goto HAND2
    :: self_notify?CC -> 
      goto CON
  od

  HAND2:
  do
    :: self_notify?Error -> 
      send!CR
      goto HAND1
    :: self_notify?CC -> 
      goto CON
    :: self_notify?DR-> 
      send!DR
      goto HALF2
  od

  HAND3:
  do
    :: self_notify?CR -> 
      send!CC
      goto CON
  od

  CON:
  do
    :: self_send?Payload -> 
      send!Payload
    :: self_notify?KR -> 
      send!KC
    :: self_notify?DR -> 
      send!DR
      goto HALF2
    :: self_send?Stop -> 
      send!DR
      goto HALF1
  od

  CHECK:
  do
    :: self_send?Payload -> 
      send!Payload
    :: self_notify?KR -> 
      send!KC
    :: self_notify?KC -> 
      goto CON
    :: self_notify?KC -> 
      goto CON    
  od

  HALF1:
  do
  :: x > 0 ->
    x--
  :: x == 0 ->
    goto HAND1
  od

  HALF2:
  do
  :: x > 0 ->
    x--
  :: x == 0 ->
    goto HAND1
  od
}
