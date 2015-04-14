LDFLAGS=-g -Wall -m32

all: original cversion

original: original.s
	gcc $(LDFLAGS) -o $@ $^

cversion: cversion.c
	gcc $(LDFLAGS) -O1 -o $@ $^

clean:
	rm original cversion