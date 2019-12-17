	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC session */

	case 6: // STATE 1
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 8: // STATE 4
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, now.x, 1);
		now.x = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 11: // STATE 12
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, now.x, 1);
		now.x = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 13: // STATE 16
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 14: // STATE 18
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 15: // STATE 19
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 16: // STATE 21
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;
;
		;
		
	case 18: // STATE 27
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, now.x, 1);
		now.x = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 20: // STATE 31
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 21: // STATE 33
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 22: // STATE 35
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 23: // STATE 36
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 24: // STATE 41
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 25: // STATE 42
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 27: // STATE 45
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, now.x, 1);
		now.x = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 29: // STATE 49
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 30: // STATE 54
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 31: // STATE 56
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 32: // STATE 57
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 33: // STATE 58
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 34: // STATE 59
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 35: // STATE 60
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 36: // STATE 61
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 37: // STATE 63
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 39: // STATE 66
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, now.x, 1);
		now.x = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 41: // STATE 70
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 42: // STATE 75
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 43: // STATE 76
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 44: // STATE 77
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 45: // STATE 78
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 46: // STATE 80
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 47: // STATE 82
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 48: // STATE 83
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 50: // STATE 86
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, now.x, 1);
		now.x = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 52: // STATE 90
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 53: // STATE 95
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 54: // STATE 96
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 55: // STATE 97
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 56: // STATE 98
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 57: // STATE 99
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 59: // STATE 102
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, now.x, 1);
		now.x = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 61: // STATE 110
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 62: // STATE 111
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 63: // STATE 112
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 65: // STATE 115
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, now.x, 1);
		now.x = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 67: // STATE 123
		;
		p_restor(II);
		;
		;
		goto R999;
	}

