	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM check_err */
;
		;
		;
		;
		
	case 5: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC inicia */

	case 6: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 3
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC arq_fsm */

	case 9: // STATE 1
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 11: // STATE 4
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		unrecv(((P0 *)_this)->rx, XX-1, 1, ((int)((P0 *)_this)->M), 0);
		;
		;
		goto R999;

	case 12: // STATE 5
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 13: // STATE 7
		;
		((P0 *)_this)->M = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 10
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		unrecv(((P0 *)_this)->rx, XX-1, 1,  !(((int)((P0 *)_this)->M)), 0);
		;
		;
		goto R999;

	case 15: // STATE 11
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 17: // STATE 17
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		unrecv(((P0 *)_this)->rx, XX-1, 1, ((int)((P0 *)_this)->N), 0);
		;
		;
		goto R999;

	case 18: // STATE 19
		;
		((P0 *)_this)->N = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 21
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		unrecv(((P0 *)_this)->rx, XX-1, 1, ((int)((P0 *)_this)->M), 0);
		;
		;
		goto R999;

	case 20: // STATE 22
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 21: // STATE 24
		;
		((P0 *)_this)->M = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 27
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		unrecv(((P0 *)_this)->rx, XX-1, 1,  !(((int)((P0 *)_this)->M)), 0);
		;
		;
		goto R999;

	case 23: // STATE 28
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 25: // STATE 31
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 2, 1);
		unrecv(((P0 *)_this)->rx, XX-1, 1,  !(((int)((P0 *)_this)->N)), 0);
		;
		;
		goto R999;
;
		;
		
	case 27: // STATE 36
		;
		((P0 *)_this)->retry_counter = trpt->bup.ovals[3];
		((P0 *)_this)->N = trpt->bup.ovals[2];
		((P0 *)_this)->M = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->retry_counter = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 28: // STATE 40
		;
		((P0 *)_this)->retry_counter = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 31: // STATE 50
		;
		((P0 *)_this)->retry_counter = trpt->bup.ovals[3];
		((P0 *)_this)->N = trpt->bup.ovals[2];
		((P0 *)_this)->M = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->retry_counter = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 32: // STATE 54
		;
		((P0 *)_this)->retry_counter = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 35: // STATE 65
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		unrecv(((P0 *)_this)->rx, XX-1, 1, ((int)((P0 *)_this)->M), 0);
		;
		;
		goto R999;

	case 36: // STATE 66
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 37: // STATE 68
		;
		((P0 *)_this)->M = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 75
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;
;
		;
		
	case 41: // STATE 78
		;
		XX = 1;
		unrecv(((P0 *)_this)->rx, XX-1, 0, 3, 1);
		unrecv(((P0 *)_this)->rx, XX-1, 1, ((int)((P0 *)_this)->M), 0);
		;
		;
		goto R999;

	case 42: // STATE 79
		;
		_m = unsend(((P0 *)_this)->tx);
		;
		goto R999;

	case 43: // STATE 81
		;
		((P0 *)_this)->M = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 87
		;
		p_restor(II);
		;
		;
		goto R999;
	}

