	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM verifica2 */
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

		 /* CLAIM verifica */
;
		;
		;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 9: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 3
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC session */

	case 12: // STATE 1
		;
		((P0 *)_this)->state = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 2
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 14: // STATE 4
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 15: // STATE 5
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 16: // STATE 6
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 17: // STATE 7
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 18: // STATE 8
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 19: // STATE 9
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 20: // STATE 10
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 22: // STATE 15
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 23: // STATE 17
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 24: // STATE 18
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 25: // STATE 20
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 26: // STATE 22
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 27: // STATE 23
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 28: // STATE 24
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 29: // STATE 25
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 30: // STATE 26
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 32: // STATE 31
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 33: // STATE 33
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 34: // STATE 35
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 35: // STATE 36
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 36: // STATE 38
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 37: // STATE 39
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 38: // STATE 40
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 39: // STATE 41
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 40: // STATE 42
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 41: // STATE 46
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 42: // STATE 47
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 44: // STATE 50
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 45: // STATE 52
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 46: // STATE 53
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 47: // STATE 54
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 48: // STATE 55
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 49: // STATE 56
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 50: // STATE 57
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 51: // STATE 61
		;
		((P0 *)_this)->state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 52: // STATE 62
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 53: // STATE 64
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 54: // STATE 65
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 55: // STATE 66
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 56: // STATE 67
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 57: // STATE 68
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 58: // STATE 69
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 59: // STATE 71
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 61: // STATE 74
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 62: // STATE 76
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 63: // STATE 77
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 64: // STATE 78
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 65: // STATE 79
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 66: // STATE 83
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 67: // STATE 84
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 68: // STATE 85
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 69: // STATE 86
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 70: // STATE 88
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 71: // STATE 90
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 72: // STATE 91
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 74: // STATE 95
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 75: // STATE 96
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 76: // STATE 97
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 77: // STATE 101
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 78: // STATE 102
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 79: // STATE 103
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 80: // STATE 104
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 81: // STATE 105
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 83: // STATE 109
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 84: // STATE 110
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 85: // STATE 111
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 86: // STATE 112
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 87: // STATE 116
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 88: // STATE 117
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 89: // STATE 118
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 91: // STATE 122
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 7, 1);
		;
		;
		goto R999;

	case 92: // STATE 123
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 93: // STATE 124
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 94: // STATE 125
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 95: // STATE 126
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 96: // STATE 130
		;
		p_restor(II);
		;
		;
		goto R999;
	}

