#include <stdio.h>
#include <string.h>
#include "trial-c.h"

int main(int argc, char **argv) {
  int wantast = (argc > 1 && !strcmp(argv[1], "-a"));
  Ast **block = read_block();
  if (wantast) {
    printf("%s", block_to_string(block));
  } else {
    print_asm_header();
  }
  if (!wantast) {
    emit_block(block);
    printf(
        "leave\n\t"
        "ret\n");
  }
  return 0;
}
