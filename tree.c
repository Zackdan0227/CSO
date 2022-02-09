#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "tree.h"

//root variable
NODE *root =NULL;


void rec_insert_node(NODE *n, NODE *r){
int dif = strcmp(n->word, r->word);

  if(dif <0 ){
    if((r->left) == NULL){
      r->left = n;
    }else{
      rec_insert_node(n, r->left);
    }
  }else{
    if((r->right) == NULL){
      r->right = n;
    }
    else{
      rec_insert_node(n, r->right);
    }
  }

}
void insert_node (char *str){
  //initializing and allocating memory for the node
  //to be inserted
  NODE *x= (NODE *) malloc(sizeof (NODE));
  x->word = (char *)malloc (sizeof(strlen(str)+1));
  x->word = str;
  x->left = NULL;
  x->right = NULL;
  //if empty tree then insert directly
  //else recursively insert
  if(root != NULL){

    rec_insert_node(x, root);
  }else{
    root = x;

  }
}
void print_tree(NODE *r){
  if(r ==NULL){
    return;
  }else{
    print_tree(r->left);
    printf("%s\n", r->word);
    print_tree(r->right);
  }
}
