#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main() {
  char *s1 = "aceg";
char *s2 = malloc(strlen(s1)+1);
for(int i=0; s1[i] != 0; i++)
s2[i] =s1[i]+1;
printf("%s", s2);
}