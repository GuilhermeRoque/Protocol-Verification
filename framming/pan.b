	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM verifica */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fram_Rx */

	case 6: // STATE 1
		;
		((P1 *)_this)->_nbytes = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 2
		;
		((P1 *)_this)->frame = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 3
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 10: // STATE 6
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 12: // STATE 10
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 3, 1);
		;
		;
		goto R999;
;
		;
		
	case 14: // STATE 16
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 16: // STATE 19
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 3, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 19: // STATE 22
		;
		((P1 *)_this)->frame = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 23: // STATE 32
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 26: // STATE 35
		;
		((P1 *)_this)->_nbytes = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 28: // STATE 45
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 30: // STATE 47
		;
		((P1 *)_this)->_nbytes = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 49
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 3, 1);
		;
		;
		goto R999;
;
		;
		
	case 33: // STATE 52
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 37: // STATE 61
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fram_Tx */

	case 38: // STATE 1
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 39: // STATE 2
		;
		((P0 *)_this)->_nbytes = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 3
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 41: // STATE 4
		;
		((P0 *)_this)->_nbytes = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 5
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 43: // STATE 6
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 44: // STATE 7
		;
		((P0 *)_this)->_nbytes = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: // STATE 9
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 47: // STATE 14
		;
		p_restor(II);
		;
		;
		goto R999;
	}

