#!/bin/bash

function test {
  expected="$1"
  expr="$2"

  echo "$expr" | bin/trial-c > tmp/test.s
  if [ ! $? ]; then
    echo "Failed to compile $expr"
    exit
  fi
  gcc -o bin/test src/driver.c tmp/test.s || exit
  result="`bin/test`"
  if [ "$result" != "$expected" ]; then
    echo "Test failed: $expected expected but got $result"
    exit
  else
    printf "."
  fi
}

make main

test 0 0
test 42 42

rm -f tmp/test.s bin/test
printf "\nAll tests passed"
