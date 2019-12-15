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

		 /* CLAIM check_err */
	case 3: // STATE 1 - _spin_nvr.tmp:4 - [((!(((arq_fsm._p==NotificaErro)||(arq_fsm._p==NotificaErroTimeout)))&&((arq_fsm._p==SomaRetry)||(arq_fsm._p==SomaRetryTimeout))))] (0:0:0 - 1)
		
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
		if (!(( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==38)||(((int)((P0 *)Pptr(f_pid(0)))->_p)==52)))&&((((int)((P0 *)Pptr(f_pid(0)))->_p)==42)||(((int)((P0 *)Pptr(f_pid(0)))->_p)==56)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:9 - [(!(((arq_fsm._p==NotificaErro)||(arq_fsm._p==NotificaErroTimeout))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][6] = 1;
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==38)||(((int)((P0 *)Pptr(f_pid(0)))->_p)==52)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 11 - _spin_nvr.tmp:11 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC inicia */
	case 6: // STATE 1 - fsm_arq.pml:140 - [(run arq_fsm(c1,c2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, now.c1, now.c2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - fsm_arq.pml:141 - [(run arq_fsm(c2,c1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0, now.c2, now.c1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - fsm_arq.pml:143 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC arq_fsm */
	case 9: // STATE 1 - fsm_arq.pml:18 - [tx!Data,N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->N)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 3, ((int)((P0 *)_this)->N), 2);
		_m = 2; goto P999; /* 0 */
	case 10: // STATE 2 - fsm_arq.pml:19 - [printf('ARQ [Idle]: recebeu UP|PAYLOAD, enviou DOWN|DATA com seq=%d\\n',N)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		Printf("ARQ [Idle]: recebeu UP|PAYLOAD, enviou DOWN|DATA com seq=%d\n", ((int)((P0 *)_this)->N));
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 4 - fsm_arq.pml:22 - [rx?Data,eval(M)] (0:0:0 - 1)
		reached[0][4] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		if (((int)((P0 *)_this)->M) != qrecv(((P0 *)_this)->rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->M)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 5 - fsm_arq.pml:23 - [tx!Ack,M] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->M)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 2, ((int)((P0 *)_this)->M), 2);
		_m = 2; goto P999; /* 0 */
	case 13: // STATE 6 - fsm_arq.pml:24 - [printf('ARQ [Idle]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\\n',M)] (0:14:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		Printf("ARQ [Idle]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", ((int)((P0 *)_this)->M));
		/* merge: M = !(M)(14, 7, 14) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->M);
		((P0 *)_this)->M =  !(((int)((P0 *)_this)->M));
#ifdef VAR_RANGES
		logval("arq_fsm:M", ((int)((P0 *)_this)->M));
#endif
		;
		/* merge: printf('ARQ [Idle]: recebeu DOWN|DATA, enviou UP|PAYLOAD\\n')(14, 8, 14) */
		reached[0][8] = 1;
		Printf("ARQ [Idle]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
		/* merge: goto Idle(0, 9, 14) */
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 14: // STATE 10 - fsm_arq.pml:30 - [rx?Data,eval(!(M))] (0:0:0 - 1)
		reached[0][10] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		if ( !(((int)((P0 *)_this)->M)) != qrecv(((P0 *)_this)->rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d",  !(((int)((P0 *)_this)->M))); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 11 - fsm_arq.pml:31 - [tx!Ack,!(M)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d",  !(((int)((P0 *)_this)->M))); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 2,  !(((int)((P0 *)_this)->M)), 2);
		_m = 2; goto P999; /* 0 */
	case 16: // STATE 12 - fsm_arq.pml:32 - [printf('ARQ [Idle]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\\n',!(M))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		Printf("ARQ [Idle]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n",  !(((int)((P0 *)_this)->M)));
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 17 - fsm_arq.pml:39 - [rx?Ack,eval(N)] (0:0:0 - 1)
		reached[0][17] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (2 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		if (((int)((P0 *)_this)->N) != qrecv(((P0 *)_this)->rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->N)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 18: // STATE 18 - fsm_arq.pml:40 - [printf('ARQ [WaitAck]: recebeu DOWN|ACK com seq=%d\\n',N)] (0:71:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		Printf("ARQ [WaitAck]: recebeu DOWN|ACK com seq=%d\n", ((int)((P0 *)_this)->N));
		/* merge: N = !(N)(71, 19, 71) */
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->N);
		((P0 *)_this)->N =  !(((int)((P0 *)_this)->N));
#ifdef VAR_RANGES
		logval("arq_fsm:N", ((int)((P0 *)_this)->N));
#endif
		;
		/* merge: goto BackoffAck(0, 20, 71) */
		reached[0][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 21 - fsm_arq.pml:44 - [rx?Data,eval(M)] (0:0:0 - 1)
		reached[0][21] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		if (((int)((P0 *)_this)->M) != qrecv(((P0 *)_this)->rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->M)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 20: // STATE 22 - fsm_arq.pml:45 - [tx!Ack,M] (0:0:0 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->M)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 2, ((int)((P0 *)_this)->M), 2);
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 23 - fsm_arq.pml:46 - [printf('ARQ [WaitAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\\n',M)] (0:59:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		Printf("ARQ [WaitAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", ((int)((P0 *)_this)->M));
		/* merge: M = !(M)(59, 24, 59) */
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->M);
		((P0 *)_this)->M =  !(((int)((P0 *)_this)->M));
#ifdef VAR_RANGES
		logval("arq_fsm:M", ((int)((P0 *)_this)->M));
#endif
		;
		/* merge: printf('ARQ [WaitAck]: recebeu DOWN|DATA, enviou UP|PAYLOAD\\n')(59, 25, 59) */
		reached[0][25] = 1;
		Printf("ARQ [WaitAck]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
		/* merge: goto WaitAck(0, 26, 59) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: // STATE 27 - fsm_arq.pml:52 - [rx?Data,eval(!(M))] (0:0:0 - 1)
		reached[0][27] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		if ( !(((int)((P0 *)_this)->M)) != qrecv(((P0 *)_this)->rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d",  !(((int)((P0 *)_this)->M))); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 23: // STATE 28 - fsm_arq.pml:53 - [tx!Ack,!(M)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d",  !(((int)((P0 *)_this)->M))); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 2,  !(((int)((P0 *)_this)->M)), 2);
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 29 - fsm_arq.pml:54 - [printf('ARQ [WaitAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\\n',!(M))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		Printf("ARQ [WaitAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n",  !(((int)((P0 *)_this)->M)));
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 31 - fsm_arq.pml:57 - [rx?Ack,eval(!(N))] (0:0:0 - 1)
		reached[0][31] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (2 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		if ( !(((int)((P0 *)_this)->N)) != qrecv(((P0 *)_this)->rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d",  !(((int)((P0 *)_this)->N))); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 26: // STATE 32 - fsm_arq.pml:58 - [printf('ARQ [WaitAck]: recebeu DOWN|ACK com seq=%d\\n',!(N))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		Printf("ARQ [WaitAck]: recebeu DOWN|ACK com seq=%d\n",  !(((int)((P0 *)_this)->N)));
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 33 - fsm_arq.pml:60 - [((retry_counter==3))] (38:0:4 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((((P0 *)_this)->retry_counter==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: retry_counter */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->retry_counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->retry_counter = 0;
		/* merge: M = 0(38, 34, 38) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->M);
		((P0 *)_this)->M = 0;
#ifdef VAR_RANGES
		logval("arq_fsm:M", ((int)((P0 *)_this)->M));
#endif
		;
		/* merge: N = 0(38, 35, 38) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->N);
		((P0 *)_this)->N = 0;
#ifdef VAR_RANGES
		logval("arq_fsm:N", ((int)((P0 *)_this)->N));
#endif
		;
		/* merge: retry_counter = 0(38, 36, 38) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->retry_counter;
		((P0 *)_this)->retry_counter = 0;
#ifdef VAR_RANGES
		logval("arq_fsm:retry_counter", ((P0 *)_this)->retry_counter);
#endif
		;
		/* merge: printf('ARQ [WaitAck]: notificou UP|ERRO\\n')(38, 37, 38) */
		reached[0][37] = 1;
		Printf("ARQ [WaitAck]: notificou UP|ERRO\n");
		_m = 3; goto P999; /* 4 */
	case 28: // STATE 40 - fsm_arq.pml:72 - [retry_counter = (retry_counter+1)] (0:42:1 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->retry_counter;
		((P0 *)_this)->retry_counter = (((P0 *)_this)->retry_counter+1);
#ifdef VAR_RANGES
		logval("arq_fsm:retry_counter", ((P0 *)_this)->retry_counter);
#endif
		;
		/* merge: printf('ARQ [WaitAck]: incrementou retry_counter\\n')(42, 41, 42) */
		reached[0][41] = 1;
		Printf("ARQ [WaitAck]: incrementou retry_counter\n");
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 45 - fsm_arq.pml:79 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 30: // STATE 46 - fsm_arq.pml:81 - [printf('ARQ [WaitAck]: ocorreu TIMEOUT\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		Printf("ARQ [WaitAck]: ocorreu TIMEOUT\n");
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 47 - fsm_arq.pml:83 - [((retry_counter==3))] (52:0:4 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((P0 *)_this)->retry_counter==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: retry_counter */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->retry_counter;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->retry_counter = 0;
		/* merge: M = 0(52, 48, 52) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->M);
		((P0 *)_this)->M = 0;
#ifdef VAR_RANGES
		logval("arq_fsm:M", ((int)((P0 *)_this)->M));
#endif
		;
		/* merge: N = 0(52, 49, 52) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->N);
		((P0 *)_this)->N = 0;
#ifdef VAR_RANGES
		logval("arq_fsm:N", ((int)((P0 *)_this)->N));
#endif
		;
		/* merge: retry_counter = 0(52, 50, 52) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->retry_counter;
		((P0 *)_this)->retry_counter = 0;
#ifdef VAR_RANGES
		logval("arq_fsm:retry_counter", ((P0 *)_this)->retry_counter);
#endif
		;
		/* merge: printf('ARQ [WaitAck]: notificou UP|ERRO\\n')(52, 51, 52) */
		reached[0][51] = 1;
		Printf("ARQ [WaitAck]: notificou UP|ERRO\n");
		_m = 3; goto P999; /* 4 */
	case 32: // STATE 54 - fsm_arq.pml:94 - [retry_counter = (retry_counter+1)] (0:56:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->retry_counter;
		((P0 *)_this)->retry_counter = (((P0 *)_this)->retry_counter+1);
#ifdef VAR_RANGES
		logval("arq_fsm:retry_counter", ((P0 *)_this)->retry_counter);
#endif
		;
		/* merge: printf('ARQ [WaitAck]: incrementou retry_counter\\n')(56, 55, 56) */
		reached[0][55] = 1;
		Printf("ARQ [WaitAck]: incrementou retry_counter\n");
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 62 - fsm_arq.pml:105 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 34: // STATE 63 - fsm_arq.pml:106 - [printf('ARQ [BackoffAck]: ocorreu TIMEOUT\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		Printf("ARQ [BackoffAck]: ocorreu TIMEOUT\n");
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 65 - fsm_arq.pml:111 - [rx?Data,eval(M)] (0:0:0 - 1)
		reached[0][65] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		if (((int)((P0 *)_this)->M) != qrecv(((P0 *)_this)->rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->M)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 36: // STATE 66 - fsm_arq.pml:112 - [tx!Ack,M] (0:0:0 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->M)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 2, ((int)((P0 *)_this)->M), 2);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 67 - fsm_arq.pml:113 - [printf('ARQ [BackoffAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\\n',M)] (0:71:1 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		Printf("ARQ [BackoffAck]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", ((int)((P0 *)_this)->M));
		/* merge: M = !(M)(71, 68, 71) */
		reached[0][68] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->M);
		((P0 *)_this)->M =  !(((int)((P0 *)_this)->M));
#ifdef VAR_RANGES
		logval("arq_fsm:M", ((int)((P0 *)_this)->M));
#endif
		;
		/* merge: printf('ARQ [BackoffAck]: recebeu DOWN|DATA, enviou UP|PAYLOAD\\n')(71, 69, 71) */
		reached[0][69] = 1;
		Printf("ARQ [BackoffAck]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
		/* merge: goto BackoffAck(0, 70, 71) */
		reached[0][70] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 38: // STATE 74 - fsm_arq.pml:123 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 39: // STATE 75 - fsm_arq.pml:124 - [tx!Data,N] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->N)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 3, ((int)((P0 *)_this)->N), 2);
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 76 - fsm_arq.pml:125 - [printf('ARQ [BackoffRelay]: ocorreu TIMEOUT, enviou DOWN|DATA com seq=%d\\n',N)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		Printf("ARQ [BackoffRelay]: ocorreu TIMEOUT, enviou DOWN|DATA com seq=%d\n", ((int)((P0 *)_this)->N));
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 78 - fsm_arq.pml:128 - [rx?Data,eval(M)] (0:0:0 - 1)
		reached[0][78] = 1;
		if (q_len(((P0 *)_this)->rx) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)_this)->rx, 0, 0, 0)) continue;
		if (((int)((P0 *)_this)->M) != qrecv(((P0 *)_this)->rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(((P0 *)_this)->rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(((P0 *)_this)->rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->rx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->M)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 42: // STATE 79 - fsm_arq.pml:129 - [tx!Ack,M] (0:0:0 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		if (q_full(((P0 *)_this)->tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->M)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->tx, 0, 2, ((int)((P0 *)_this)->M), 2);
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 80 - fsm_arq.pml:130 - [printf('ARQ [BackoffRelay]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\\n',M)] (0:84:1 - 1)
		IfNotBlocked
		reached[0][80] = 1;
		Printf("ARQ [BackoffRelay]: recebeu DOWN|DATA, enviou DOWN|ACK com seq=%d\n", ((int)((P0 *)_this)->M));
		/* merge: M = !(M)(84, 81, 84) */
		reached[0][81] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->M);
		((P0 *)_this)->M =  !(((int)((P0 *)_this)->M));
#ifdef VAR_RANGES
		logval("arq_fsm:M", ((int)((P0 *)_this)->M));
#endif
		;
		/* merge: printf('ARQ [BackoffRelay]: recebeu DOWN|DATA, enviou UP|PAYLOAD\\n')(84, 82, 84) */
		reached[0][82] = 1;
		Printf("ARQ [BackoffRelay]: recebeu DOWN|DATA, enviou UP|PAYLOAD\n");
		/* merge: goto BackoffRelay(0, 83, 84) */
		reached[0][83] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 44: // STATE 87 - fsm_arq.pml:136 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
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

