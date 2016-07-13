CFLAGS = -Wall

all: build

build: main

main:
	clang $(CFLAGS) -o bin/trial-c src/main.c

test: main
	bin/test.sh

clean:
	rm bin/*
