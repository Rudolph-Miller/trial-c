CFLAGS = -Wall -std=gnu99 -g

all: build

build: main

main:
	clang $(CFLAGS) -o bin/trial-c src/main.c src/lex.c src/string.c

test: main
	bin/test.sh

clean:
	rm bin/*
