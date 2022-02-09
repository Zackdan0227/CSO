#include <stdio.h>
// int factorial (int n){
//   if (n==0|n==1)
//     return 1;
//   return n * factorial(n-1);
// }
int main(){
    // unsigned int a = 1000;
    // signed int b = -1;
    //
    // if(a>b) puts ("a is larger than b");
    // else puts("a is lesser");
    //
    // return 0;
    // int result = factorial(3);
    // printf("result: %d", result);
    char c[3];
    c[0] = 'a';
    c[1]= 0;
    printf("%s\n", c);
    char hello[] = "alot";
    printf("hello is %s", hello);

    //copying array to another
    char s1[]= "hello";
    char s2 [10];
    char *p = s1;
    char *q = s2;

    while (*q++ = *p++);
    //the extra parenthesis bypass the gcc test of
    //assignment statement or comparison statement
    //copying s1 to s2
    //the value of an assignemnt, =, is the value being assigned. So, the loop
    //stops when the zero is assigned, because a 0 is "false";
    printf("%s\n",s2);
}
