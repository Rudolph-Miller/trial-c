CFLAGS = -Wall -std=gnu99 -g
CFILES = src/lex.c src/gen.c src/parse.c src/list.c src/string.c src/util.c

all: build

build: main

main:
	clang $(CFLAGS) -o bin/trial-c src/main.c $(CFILES)

unittest: main
	clang $(CFLAGS) -o bin/unittest src/unittest.c $(CFILES)

test: main unittest
	bin/unittest
	bin/test.sh

clean:
	rm bin/*
