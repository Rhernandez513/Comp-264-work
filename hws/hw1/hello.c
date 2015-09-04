#include <stdio.h>
#include <sys/stat.h>

int file_exist (char *filename) {
  struct stat   buffer;   
  return (stat (filename, &buffer) == 0);
}

int main() {
  int i = 0;
  char * hello = "hello";
  for (i = 0; i < 5; ++i) {
    printf("Eat...\n");
    printf("Sleep...\n");
    printf("Rave...\n");
    printf("Repeat...\n\n");
  }
  if (file_exist("hello.o")) {
    printf("%s", hello);
    printf(".o exists!\n");
  }
  if (file_exist("hello.i")) {
    printf("%s", hello);
    printf(".i exists!\n");
  }
  if (file_exist("hello.s")) {
    printf("%s", hello);
    printf(".s exists\n");
  }
  if (file_exist("hello.c")) {
    printf("%s", hello);
    printf(".c exists!\n");
  }
  return 0;
}
