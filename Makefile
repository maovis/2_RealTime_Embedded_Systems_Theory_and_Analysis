INCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS=
CFLAGS= -Wall -O0 -g $(INCLUDE_DIRS) $(CDEFS)
LIBS= 

HFILES= 
CFILES= C2A1_safe_within_LUB_disharmonic.c C2A2_feasible_above_LUB_disharmonic.c C2A3_above_LUB_harmonic.c C2A4_above_LUB_fail_disharmonic.c C2A5_above_LUB_zeromargin.c C2A6_above_LUB_RMfail_DMfeasible.c C2A7_above_LUB_RMfail_EDFfeasible.c

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all:	C2A1_safe_within_LUB_disharmonic C2A2_feasible_above_LUB_disharmonic C2A3_above_LUB_harmonic C2A4_above_LUB_fail_disharmonic C2A5_above_LUB_zeromargin C2A6_above_LUB_RMfail_DMfeasible C2A7_above_LUB_RMfail_EDFfeasible

clean:
	-rm -f *.o *.d
	-rm -f C2A1_safe_within_LUB_disharmonic C2A2_feasible_above_LUB_disharmonic C2A3_above_LUB_harmonic C2A4_above_LUB_fail_disharmonic C2A5_above_LUB_zeromargin C2A6_above_LUB_RMfail_DMfeasible C2A7_above_LUB_RMfail_EDFfeasible

C2A1_safe_within_LUB_disharmonic: C2A1_safe_within_LUB_disharmonic.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

C2A2_feasible_above_LUB_disharmonic: C2A2_feasible_above_LUB_disharmonic.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

C2A3_above_LUB_harmonic: C2A3_above_LUB_harmonic.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

C2A4_above_LUB_fail_disharmonic: C2A4_above_LUB_fail_disharmonic.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

C2A5_above_LUB_zeromargin: C2A5_above_LUB_zeromargin.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

C2A6_above_LUB_RMfail_DMfeasible: C2A6_above_LUB_RMfail_DMfeasible.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

C2A7_above_LUB_RMfail_EDFfeasible: C2A7_above_LUB_RMfail_EDFfeasible.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt
	
depend:

.c.o:
	$(CC) $(CFLAGS) -c $<
