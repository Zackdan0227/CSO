#include <stdio.h>

int add_array(int a[], int size);  // implemented in add_array.s

int main()
{
  int a[5] = { 2, 4, 6000, 8, 1203};
  int res = add_array(a, 5);
  printf("result = %d\n", res);
}
