CC = gcc
CC_FLAGS = -w -g -Wall -O0

test: test.o clist.o
	$(CC) $(CC_FLAGS) test.o clist.o -o test

test.o: test.c
	$(CC) $(CC_FLAGS) -c test.c

clist.o: clist.c
	$(CC) $(CC_FLAGS) -c clist.c

clean:
	rm *.o test
