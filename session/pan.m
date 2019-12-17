#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - session.pml:144 - [(run session(c1,c2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, now.c1, now.c2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - session.pml:145 - [(run session(c2,c1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0, now.c2, now.c1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - session.pml:147 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC session */
	case 6: // STATE 1 - session.pml:13 - [tx!CR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 7, 1);
		_m = 2; goto P999; /* 0 */
	case 7: // STATE 3 - session.pml:15 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 8: // STATE 4 - session.pml:17 - [rx?x] (0:0:1 - 1)
		reached[0][4] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = now.x;
		;
		now.x = qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", now.x); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 9: // STATE 5 - session.pml:18 - [(empty(rx))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((q_len(((P0 *)_this)->rx)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 11 - session.pml:24 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 11: // STATE 12 - session.pml:26 - [rx?x] (0:0:1 - 1)
		reached[0][12] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = now.x;
		;
		now.x = qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", now.x); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 13 - session.pml:27 - [(empty(rx))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((q_len(((P0 *)_this)->rx)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 16 - session.pml:29 - [tx!CR] (0:0:0 - 3)
		IfNotBlocked
		reached[0][16] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 7, 1);
		_m = 2; goto P999; /* 0 */
	case 14: // STATE 18 - session.pml:31 - [rx?CR] (0:0:0 - 1)
		reached[0][18] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (7 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 19 - session.pml:32 - [tx!CC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 6, 1);
		_m = 2; goto P999; /* 0 */
	case 16: // STATE 21 - session.pml:34 - [rx?CC] (0:0:0 - 1)
		reached[0][21] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (6 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 26 - session.pml:40 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 18: // STATE 27 - session.pml:42 - [rx?x] (0:0:1 - 1)
		reached[0][27] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = now.x;
		;
		now.x = qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", now.x); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 28 - session.pml:43 - [(empty(rx))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((q_len(((P0 *)_this)->rx)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 31 - session.pml:45 - [tx!CR] (0:0:0 - 3)
		IfNotBlocked
		reached[0][31] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 7, 1);
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 33 - session.pml:47 - [rx?CC] (0:0:0 - 1)
		reached[0][33] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (6 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 22: // STATE 35 - session.pml:49 - [rx?DR] (0:0:0 - 1)
		reached[0][35] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 23: // STATE 36 - session.pml:50 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 41 - session.pml:56 - [rx?CR] (0:0:0 - 1)
		reached[0][41] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (7 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 25: // STATE 42 - session.pml:57 - [tx!CC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 6, 1);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 44 - session.pml:59 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 27: // STATE 45 - session.pml:61 - [rx?x] (0:0:1 - 1)
		reached[0][45] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = now.x;
		;
		now.x = qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", now.x); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 46 - session.pml:62 - [(empty(rx))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (!((q_len(((P0 *)_this)->rx)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 49 - session.pml:64 - [tx!CR] (0:0:0 - 3)
		IfNotBlocked
		reached[0][49] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 7, 1);
		_m = 2; goto P999; /* 0 */
	case 30: // STATE 54 - session.pml:70 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 56 - session.pml:72 - [tx!Data] (0:0:0 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 32: // STATE 57 - session.pml:73 - [rx?Data] (0:0:0 - 1)
		reached[0][57] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (1 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 33: // STATE 58 - session.pml:74 - [rx?KR] (0:0:0 - 1)
		reached[0][58] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (5 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 34: // STATE 59 - session.pml:75 - [tx!KC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 4, 1);
		_m = 2; goto P999; /* 0 */
	case 35: // STATE 60 - session.pml:76 - [rx?DR] (0:0:0 - 1)
		reached[0][60] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 36: // STATE 61 - session.pml:77 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 63 - session.pml:79 - [tx!KR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 5, 1);
		_m = 2; goto P999; /* 0 */
	case 38: // STATE 65 - session.pml:81 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 39: // STATE 66 - session.pml:83 - [rx?x] (0:0:1 - 1)
		reached[0][66] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = now.x;
		;
		now.x = qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", now.x); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 40: // STATE 67 - session.pml:84 - [(empty(rx))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		if (!((q_len(((P0 *)_this)->rx)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 70 - session.pml:86 - [tx!CR] (0:0:0 - 3)
		IfNotBlocked
		reached[0][70] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 7, 1);
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 75 - session.pml:92 - [tx!Data] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 76 - session.pml:93 - [rx?KR] (0:0:0 - 1)
		reached[0][76] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (5 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 44: // STATE 77 - session.pml:94 - [tx!KC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 4, 1);
		_m = 2; goto P999; /* 0 */
	case 45: // STATE 78 - session.pml:95 - [rx?Data] (0:0:0 - 1)
		reached[0][78] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (1 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 46: // STATE 80 - session.pml:97 - [rx?KC] (0:0:0 - 1)
		reached[0][80] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (4 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 47: // STATE 82 - session.pml:99 - [rx?DR] (0:0:0 - 1)
		reached[0][82] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 48: // STATE 83 - session.pml:100 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 85 - session.pml:102 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 50: // STATE 86 - session.pml:104 - [rx?x] (0:0:1 - 1)
		reached[0][86] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = now.x;
		;
		now.x = qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", now.x); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 51: // STATE 87 - session.pml:105 - [(empty(rx))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (!((q_len(((P0 *)_this)->rx)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 90 - session.pml:107 - [tx!CR] (0:0:0 - 3)
		IfNotBlocked
		reached[0][90] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 7, 1);
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 95 - session.pml:113 - [rx?Data] (0:0:0 - 1)
		reached[0][95] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (1 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 54: // STATE 96 - session.pml:114 - [rx?KR] (0:0:0 - 1)
		reached[0][96] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (5 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 55: // STATE 97 - session.pml:115 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][97] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 56: // STATE 98 - session.pml:116 - [rx?DR] (0:0:0 - 1)
		reached[0][98] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 57: // STATE 99 - session.pml:117 - [tx!DC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 2, 1);
		_m = 2; goto P999; /* 0 */
	case 58: // STATE 101 - session.pml:119 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][101] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 59: // STATE 102 - session.pml:121 - [rx?x] (0:0:1 - 1)
		reached[0][102] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = now.x;
		;
		now.x = qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", now.x); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 60: // STATE 103 - session.pml:122 - [(empty(rx))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		if (!((q_len(((P0 *)_this)->rx)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 110 - session.pml:129 - [rx?DR] (0:0:0 - 1)
		reached[0][110] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 62: // STATE 111 - session.pml:130 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 63: // STATE 112 - session.pml:131 - [rx?DC] (0:0:0 - 1)
		reached[0][112] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (2 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 64: // STATE 114 - session.pml:133 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][114] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 65: // STATE 115 - session.pml:135 - [rx?x] (0:0:1 - 1)
		reached[0][115] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = now.x;
		;
		now.x = qrecv(((P0 *)_this)->rx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("x", now.x);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", now.x); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 66: // STATE 116 - session.pml:136 - [(empty(rx))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][116] = 1;
		if (!((q_len(((P0 *)_this)->rx)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 123 - session.pml:140 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][123] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

