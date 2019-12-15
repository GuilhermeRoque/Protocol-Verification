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

		 /* CLAIM verifica */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!((fram_Rx.frame==1)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->frame)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:8 - [(!((fram_Rx.frame==1)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][8] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->frame)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fram_Rx */
	case 6: // STATE 1 - framming.pml:30 - [nbytes = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->_nbytes;
		((P1 *)_this)->_nbytes = 0;
#ifdef VAR_RANGES
		logval("fram_Rx:nbytes", ((P1 *)_this)->_nbytes);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - framming.pml:31 - [frame = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->frame);
		((P1 *)_this)->frame = 0;
#ifdef VAR_RANGES
		logval("fram_Rx:frame", ((int)((P1 *)_this)->frame));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - framming.pml:33 - [tx?esc] (0:0:0 - 0)
		reached[1][3] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (2 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 9: // STATE 4 - framming.pml:34 - [printf('[Idle]: recebeu byte esc -> [Idle]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("[Idle]: recebeu byte esc -> [Idle]\n");
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - framming.pml:36 - [tx?data] (0:0:0 - 0)
		reached[1][6] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 8 - framming.pml:37 - [printf('[Idle]: recebeu byte data -> [Idle]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][8] = 1;
		Printf("[Idle]: recebeu byte data -> [Idle]\n");
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 10 - framming.pml:39 - [tx?flag] (0:0:0 - 0)
		reached[1][10] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (3 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 13: // STATE 11 - framming.pml:40 - [printf('[Idle]: recebeu byte flag -> [RX]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][11] = 1;
		Printf("[Idle]: recebeu byte flag -> [RX]\n");
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 16 - framming.pml:46 - [tx?esc] (0:0:0 - 0)
		reached[1][16] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (2 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 17 - framming.pml:47 - [printf('[RX]: recebeu byte esc -> [ESC]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][17] = 1;
		Printf("[RX]: recebeu byte esc -> [ESC]\n");
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 19 - framming.pml:49 - [tx?flag] (0:0:0 - 0)
		reached[1][19] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (3 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 20 - framming.pml:51 - [((nbytes>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((((P1 *)_this)->_nbytes>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 21 - framming.pml:52 - [printf('[RX]: recebeu byte flag e (_nbytes > 0) -> [Idle]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][21] = 1;
		Printf("[RX]: recebeu byte flag e (_nbytes > 0) -> [Idle]\n");
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 22 - framming.pml:53 - [frame = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->frame);
		((P1 *)_this)->frame = 1;
#ifdef VAR_RANGES
		logval("fram_Rx:frame", ((int)((P1 *)_this)->frame));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 25 - framming.pml:56 - [printf('[RX]: recebeu byte flag e (_nbytes = 0) -> [RX]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][25] = 1;
		Printf("[RX]: recebeu byte flag e (_nbytes = 0) -> [RX]\n");
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 29 - framming.pml:59 - [(timeout)] (0:0:0 - 0)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 22: // STATE 30 - framming.pml:60 - [printf('[RX]: recebeu timeout \\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][30] = 1;
		Printf("[RX]: recebeu timeout \n");
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 32 - framming.pml:62 - [tx?data] (0:0:0 - 0)
		reached[1][32] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 24: // STATE 33 - framming.pml:64 - [((nbytes<max_bytes))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((P1 *)_this)->_nbytes<((P1 *)_this)->_max_bytes)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 34 - framming.pml:65 - [printf('[RX]: recebeu byte data e (_nbytes < _max_bytes) -> [RX]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][34] = 1;
		Printf("[RX]: recebeu byte data e (_nbytes < _max_bytes) -> [RX]\n");
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 35 - framming.pml:66 - [nbytes = (nbytes+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->_nbytes;
		((P1 *)_this)->_nbytes = (((P1 *)_this)->_nbytes+1);
#ifdef VAR_RANGES
		logval("fram_Rx:nbytes", ((P1 *)_this)->_nbytes);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 38 - framming.pml:69 - [printf('[RX]: recebeu byte data e (_nbytes = _max_bytes) -> [Idle]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][38] = 1;
		Printf("[RX]: recebeu byte data e (_nbytes = _max_bytes) -> [Idle]\n");
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 45 - framming.pml:76 - [tx?data] (0:0:0 - 0)
		reached[1][45] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 29: // STATE 46 - framming.pml:77 - [printf('[ESC]: recebeu byte data -> [RX]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][46] = 1;
		Printf("[ESC]: recebeu byte data -> [RX]\n");
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 47 - framming.pml:78 - [nbytes = (nbytes+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[1][47] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->_nbytes;
		((P1 *)_this)->_nbytes = (((P1 *)_this)->_nbytes+1);
#ifdef VAR_RANGES
		logval("fram_Rx:nbytes", ((P1 *)_this)->_nbytes);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 49 - framming.pml:80 - [tx?flag] (0:0:0 - 0)
		reached[1][49] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (3 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 32: // STATE 50 - framming.pml:81 - [printf('[ESC]: recebeu byte flag -> [Idle]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][50] = 1;
		Printf("[ESC]: recebeu byte flag -> [Idle]\n");
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 52 - framming.pml:83 - [tx?esc] (0:0:0 - 0)
		reached[1][52] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (2 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 34: // STATE 53 - framming.pml:84 - [printf('[ESC]: recebeu byte esc -> [Idle]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][53] = 1;
		Printf("[ESC]: recebeu byte esc -> [Idle]\n");
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 55 - framming.pml:86 - [(timeout)] (0:0:0 - 0)
		IfNotBlocked
		reached[1][55] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 36: // STATE 56 - framming.pml:87 - [printf('[ESC]: recebeu timeout -> [Idle]\\n')] (0:0:0 - 0)
		IfNotBlocked
		reached[1][56] = 1;
		Printf("[ESC]: recebeu timeout -> [Idle]\n");
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 61 - framming.pml:90 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][61] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fram_Tx */
	case 38: // STATE 1 - framming.pml:8 - [tx!flag] (0:0:0 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 2 - framming.pml:9 - [nbytes = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_nbytes;
		((P0 *)_this)->_nbytes = 0;
#ifdef VAR_RANGES
		logval("fram_Tx:nbytes", ((P0 *)_this)->_nbytes);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 3 - framming.pml:12 - [tx!data] (0:0:0 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 41: // STATE 4 - framming.pml:13 - [nbytes = (nbytes+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_nbytes;
		((P0 *)_this)->_nbytes = (((P0 *)_this)->_nbytes+1);
#ifdef VAR_RANGES
		logval("fram_Tx:nbytes", ((P0 *)_this)->_nbytes);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 5 - framming.pml:14 - [tx!esc] (0:0:0 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 2, 1);
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 6 - framming.pml:15 - [tx!data] (0:0:0 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 44: // STATE 7 - framming.pml:16 - [nbytes = (nbytes+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_nbytes;
		((P0 *)_this)->_nbytes = (((P0 *)_this)->_nbytes+1);
#ifdef VAR_RANGES
		logval("fram_Tx:nbytes", ((P0 *)_this)->_nbytes);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 8 - framming.pml:17 - [((nbytes>0))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((P0 *)_this)->_nbytes>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 9 - framming.pml:18 - [tx!flag] (0:0:0 - 0)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 14 - framming.pml:22 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][14] = 1;
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

