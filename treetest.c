#include <stdio.h>
#include <stdlib.h>

typedef struct node {
int value;
struct node *left;
struct node *right;
} NODE;

NODE *new_node(int val)
{
NODE *n;
n->left = NULL;
n->right = NULL;
n->value = val;
return n;
}
int main(){
  NODE *n = new_node(5);
  printf("%d", n->value);
}
