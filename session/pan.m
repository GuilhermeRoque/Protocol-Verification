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

		 /* CLAIM verifica2 */
	case 3: // STATE 1 - _spin_nvr.tmp:14 - [(!(((state1==0)&&(state2==0))))] (0:0:0 - 1)
		
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
		reached[3][1] = 1;
		if (!( !(((((int)now.state1)==0)&&(((int)now.state2)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:19 - [(!(((state1==0)&&(state2==0))))] (0:0:0 - 1)
		
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
		reached[3][8] = 1;
		if (!( !(((((int)now.state1)==0)&&(((int)now.state2)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
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
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM verifica */
	case 6: // STATE 1 - _spin_nvr.tmp:3 - [(!(((state1==1)&&(state2==1))))] (0:0:0 - 1)
		
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
		if (!( !(((((int)now.state1)==1)&&(((int)now.state2)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:8 - [(!(((state1==1)&&(state2==1))))] (0:0:0 - 1)
		
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
		if (!( !(((((int)now.state1)==1)&&(((int)now.state2)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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

		 /* PROC :init: */
	case 9: // STATE 1 - session.pml:168 - [(run session(c1,c2,state1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, now.c1, now.c2, ((int)now.state1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - session.pml:169 - [(run session(c2,c1,state2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0, now.c2, now.c1, ((int)now.state2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 3 - session.pml:171 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC session */
	case 12: // STATE 1 - session.pml:15 - [state = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->state);
		((P0 *)_this)->state = 0;
#ifdef VAR_RANGES
		logval("session:state", ((int)((P0 *)_this)->state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 2 - session.pml:17 - [tx!CR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
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
	case 14: // STATE 4 - session.pml:20 - [rx?CR] (0:0:0 - 1)
		reached[0][4] = 1;
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
	case 15: // STATE 5 - session.pml:21 - [rx?CC] (0:0:0 - 1)
		reached[0][5] = 1;
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
	case 16: // STATE 6 - session.pml:22 - [rx?KR] (0:0:0 - 1)
		reached[0][6] = 1;
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
	case 17: // STATE 7 - session.pml:23 - [rx?KC] (0:0:0 - 1)
		reached[0][7] = 1;
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
	case 18: // STATE 8 - session.pml:24 - [rx?DR] (0:0:0 - 1)
		reached[0][8] = 1;
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
	case 19: // STATE 9 - session.pml:25 - [rx?DC] (0:0:0 - 1)
		reached[0][9] = 1;
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
	case 20: // STATE 10 - session.pml:26 - [rx?Data] (0:0:0 - 1)
		reached[0][10] = 1;
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
	case 21: // STATE 14 - session.pml:31 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 22: // STATE 15 - session.pml:32 - [tx!CR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
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
	case 23: // STATE 17 - session.pml:34 - [rx?CR] (0:0:0 - 1)
		reached[0][17] = 1;
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
	case 24: // STATE 18 - session.pml:35 - [tx!CC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
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
	case 25: // STATE 20 - session.pml:37 - [rx?CC] (0:0:0 - 1)
		reached[0][20] = 1;
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
	case 26: // STATE 22 - session.pml:40 - [rx?KR] (0:0:0 - 1)
		reached[0][22] = 1;
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
	case 27: // STATE 23 - session.pml:41 - [rx?KC] (0:0:0 - 1)
		reached[0][23] = 1;
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
	case 28: // STATE 24 - session.pml:42 - [rx?DR] (0:0:0 - 1)
		reached[0][24] = 1;
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
	case 29: // STATE 25 - session.pml:43 - [rx?DC] (0:0:0 - 1)
		reached[0][25] = 1;
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
	case 30: // STATE 26 - session.pml:44 - [rx?Data] (0:0:0 - 1)
		reached[0][26] = 1;
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
	case 31: // STATE 30 - session.pml:50 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 32: // STATE 31 - session.pml:51 - [tx!CR] (0:0:0 - 1)
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
	case 33: // STATE 33 - session.pml:53 - [rx?CC] (0:0:0 - 1)
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
	case 34: // STATE 35 - session.pml:55 - [rx?DR] (0:0:0 - 1)
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
	case 35: // STATE 36 - session.pml:56 - [tx!DR] (0:0:0 - 1)
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
	case 36: // STATE 38 - session.pml:59 - [rx?CR] (0:0:0 - 1)
		reached[0][38] = 1;
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
	case 37: // STATE 39 - session.pml:60 - [rx?KR] (0:0:0 - 1)
		reached[0][39] = 1;
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
	case 38: // STATE 40 - session.pml:61 - [rx?KC] (0:0:0 - 1)
		reached[0][40] = 1;
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
	case 39: // STATE 41 - session.pml:62 - [rx?DC] (0:0:0 - 1)
		reached[0][41] = 1;
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
	case 40: // STATE 42 - session.pml:63 - [rx?Data] (0:0:0 - 1)
		reached[0][42] = 1;
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
	case 41: // STATE 46 - session.pml:69 - [rx?CR] (0:0:0 - 1)
		reached[0][46] = 1;
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
	case 42: // STATE 47 - session.pml:70 - [tx!CC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
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
	case 43: // STATE 49 - session.pml:72 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 44: // STATE 50 - session.pml:73 - [tx!CR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
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
	case 45: // STATE 52 - session.pml:76 - [rx?CC] (0:0:0 - 1)
		reached[0][52] = 1;
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
	case 46: // STATE 53 - session.pml:77 - [rx?KR] (0:0:0 - 1)
		reached[0][53] = 1;
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
	case 47: // STATE 54 - session.pml:78 - [rx?KC] (0:0:0 - 1)
		reached[0][54] = 1;
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
	case 48: // STATE 55 - session.pml:79 - [rx?DR] (0:0:0 - 1)
		reached[0][55] = 1;
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
	case 49: // STATE 56 - session.pml:80 - [rx?DC] (0:0:0 - 1)
		reached[0][56] = 1;
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
	case 50: // STATE 57 - session.pml:81 - [rx?Data] (0:0:0 - 1)
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
	case 51: // STATE 61 - session.pml:86 - [state = 1] (0:0:2 - 9)
		IfNotBlocked
		reached[0][61] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->state);
		((P0 *)_this)->state = 1;
#ifdef VAR_RANGES
		logval("session:state", ((int)((P0 *)_this)->state));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: state */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->state = 0;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 62 - session.pml:88 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][62] = 1;
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
	case 53: // STATE 64 - session.pml:90 - [tx!Data] (0:0:0 - 1)
		IfNotBlocked
		reached[0][64] = 1;
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
	case 54: // STATE 65 - session.pml:91 - [rx?Data] (0:0:0 - 1)
		reached[0][65] = 1;
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
	case 55: // STATE 66 - session.pml:92 - [rx?KR] (0:0:0 - 1)
		reached[0][66] = 1;
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
	case 56: // STATE 67 - session.pml:93 - [tx!KC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][67] = 1;
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
	case 57: // STATE 68 - session.pml:94 - [rx?DR] (0:0:0 - 1)
		reached[0][68] = 1;
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
	case 58: // STATE 69 - session.pml:95 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
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
	case 59: // STATE 71 - session.pml:97 - [tx!KR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
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
	case 60: // STATE 73 - session.pml:99 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 61: // STATE 74 - session.pml:100 - [tx!CR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][74] = 1;
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
	case 62: // STATE 76 - session.pml:103 - [rx?CR] (0:0:0 - 1)
		reached[0][76] = 1;
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
	case 63: // STATE 77 - session.pml:104 - [rx?CC] (0:0:0 - 1)
		reached[0][77] = 1;
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
	case 64: // STATE 78 - session.pml:105 - [rx?KC] (0:0:0 - 1)
		reached[0][78] = 1;
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
	case 65: // STATE 79 - session.pml:106 - [rx?DC] (0:0:0 - 1)
		reached[0][79] = 1;
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
	case 66: // STATE 83 - session.pml:112 - [tx!Data] (0:0:0 - 1)
		IfNotBlocked
		reached[0][83] = 1;
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
	case 67: // STATE 84 - session.pml:113 - [rx?KR] (0:0:0 - 1)
		reached[0][84] = 1;
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
	case 68: // STATE 85 - session.pml:114 - [tx!KC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][85] = 1;
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
	case 69: // STATE 86 - session.pml:115 - [rx?Data] (0:0:0 - 1)
		reached[0][86] = 1;
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
	case 70: // STATE 88 - session.pml:117 - [rx?KC] (0:0:0 - 1)
		reached[0][88] = 1;
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
	case 71: // STATE 90 - session.pml:119 - [rx?DR] (0:0:0 - 1)
		reached[0][90] = 1;
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
	case 72: // STATE 91 - session.pml:120 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][91] = 1;
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
	case 73: // STATE 93 - session.pml:122 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 74: // STATE 95 - session.pml:125 - [rx?CR] (0:0:0 - 1)
		reached[0][95] = 1;
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
	case 75: // STATE 96 - session.pml:126 - [rx?CC] (0:0:0 - 1)
		reached[0][96] = 1;
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
	case 76: // STATE 97 - session.pml:127 - [rx?DC] (0:0:0 - 1)
		reached[0][97] = 1;
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
	case 77: // STATE 101 - session.pml:133 - [rx?Data] (0:0:0 - 1)
		reached[0][101] = 1;
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
	case 78: // STATE 102 - session.pml:134 - [rx?KR] (0:0:0 - 1)
		reached[0][102] = 1;
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
	case 79: // STATE 103 - session.pml:135 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][103] = 1;
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
	case 80: // STATE 104 - session.pml:136 - [rx?DR] (0:0:0 - 1)
		reached[0][104] = 1;
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
	case 81: // STATE 105 - session.pml:137 - [tx!DC] (0:0:0 - 1)
		IfNotBlocked
		reached[0][105] = 1;
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
	case 82: // STATE 107 - session.pml:139 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 83: // STATE 109 - session.pml:142 - [rx?CR] (0:0:0 - 1)
		reached[0][109] = 1;
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
	case 84: // STATE 110 - session.pml:143 - [rx?CC] (0:0:0 - 1)
		reached[0][110] = 1;
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
	case 85: // STATE 111 - session.pml:144 - [rx?KC] (0:0:0 - 1)
		reached[0][111] = 1;
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
	case 86: // STATE 112 - session.pml:145 - [rx?DC] (0:0:0 - 1)
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
	case 87: // STATE 116 - session.pml:151 - [rx?DR] (0:0:0 - 1)
		reached[0][116] = 1;
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
	case 88: // STATE 117 - session.pml:152 - [tx!DR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][117] = 1;
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
	case 89: // STATE 118 - session.pml:153 - [rx?DC] (0:0:0 - 1)
		reached[0][118] = 1;
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
	case 90: // STATE 120 - session.pml:155 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][120] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 91: // STATE 122 - session.pml:158 - [rx?CR] (0:0:0 - 1)
		reached[0][122] = 1;
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
	case 92: // STATE 123 - session.pml:159 - [rx?CC] (0:0:0 - 1)
		reached[0][123] = 1;
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
	case 93: // STATE 124 - session.pml:160 - [rx?KR] (0:0:0 - 1)
		reached[0][124] = 1;
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
	case 94: // STATE 125 - session.pml:161 - [rx?KC] (0:0:0 - 1)
		reached[0][125] = 1;
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
	case 95: // STATE 126 - session.pml:162 - [rx?Data] (0:0:0 - 1)
		reached[0][126] = 1;
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
	case 96: // STATE 130 - session.pml:164 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][130] = 1;
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

