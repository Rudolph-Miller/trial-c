#include <stdio.h>

extern int mymain(void);

extern int f(int n);

int main(int argc, char **argv) {
  printf("%d\n", f(102));
  return 0;
}
