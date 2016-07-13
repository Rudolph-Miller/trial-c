all: build

build: main

main:
	clang -o bin/trial-c src/main.c

driver:
	clang -o bin/driver src/driver.c

test:
	bin/test.sh

clean:
	rm bin/*
