INCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS=
CFLAGS= -Wall -O0 -g $(INCLUDE_DIRS) $(CDEFS)
LIBS= 

HFILES= 
CFILES= C2A1_safe_within_LUB_disharmonic.c C2A2_feasible_above_LUB_disharmonic.c C2A3_above_LUB_harmonic.c

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all:	C2A1_safe_within_LUB_disharmonic C2A2_feasible_above_LUB_disharmonic C2A3_above_LUB_harmonic

clean:
	-rm -f *.o *.d
	-rm -f C2A1_safe_within_LUB_disharmonic C2A2_feasible_above_LUB_disharmonic C2A3_above_LUB_harmonic

C2A1_safe_within_LUB_disharmonic: C2A1_safe_within_LUB_disharmonic.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

C2A2_feasible_above_LUB_disharmonic: C2A2_feasible_above_LUB_disharmonic.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt

C2A3_above_LUB_harmonic: C2A3_above_LUB_harmonic.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $@.o -lpthread -lrt
	
depend:

.c.o:
	$(CC) $(CFLAGS) -c $<
