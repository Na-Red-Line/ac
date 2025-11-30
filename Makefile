CC = gcc
CFLAGS = -std=c17 -g -fno-common
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

ac: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(OBJS): ac.h

test: ac
	./test.sh

clean:
	rm -f ac *.o *~ tmp*

.PHONY: test clean
