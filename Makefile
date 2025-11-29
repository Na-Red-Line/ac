CC = gcc
CFLAGS = -std=c17 -g -fno-common

ac: main.o
	$(CC) -o ac main.o $(LDFLAGS)

test: ac
	./test.sh

clean:
	rm -f ac *.o *~ tmp*

.PHONY: test clean
