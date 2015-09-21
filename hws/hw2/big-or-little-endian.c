#include <stdio.h>

int main() {
  short int short_num = 1;
  printf("Short int: ");
  if(*(char *)&short_num == 1) {
    printf("Little-Endian\n");
  } else {
    printf("Big-Endian\n");
  }

  int num = 1;
  printf("Unspecified int: ");
  if(*(char *)&num == 1) {
    printf("Little-Endian\n");
  } else {
    printf("Big-Endian\n");
  }

  long int long_num = 1;
  printf("Long int: ");
  if(*(char *)&long_num == 1) {
    printf("Little-Endian\n");
  } else {
    printf("Big-Endian\n");
  }
  return 0;
}
