#include <stdio.h>
#include <string.h>

typedef unsigned char * pointer;

void show_bytes(pointer start, int length) {
  int i;
  for (i = 0; i < length; ++i) {
    printf("%p\t0x%.2x\n", start + i, start[i]);
  }
  printf("\n");
}

int main(int argc, char * argv[]) {
  if (argc > 1) {
    printf("%s\n", argv[1]);
    show_bytes(argv[1], strlen(argv[1]));
  }
  return 0;
}
