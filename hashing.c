#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "tree.h"
#define SIZE 100

typedef struct hashcell{
  char *word;
  struct hashcell *next;
}HASHCELL;

HASHCELL *hashtable[SIZE];

unsigned hash_string (char *str){
  unsigned int hash = 1;

  while ((*str != 0)){
    hash = (hash *7) + *str;
    *str++;
  }
  return (hash % SIZE);
}

void insert_hash_cell (char *str){
  unsigned int index = hash_string(str);
  //allocate memory for the new hashcell
  HASHCELL *c = (HASHCELL *) malloc(sizeof(HASHCELL));
  c->word = (char *)malloc (sizeof(strlen(str)+1));

  strcpy(c->word, str);

  //create a head reference to iterate through the
  //linked list to see if there is duplicate values
  HASHCELL *head = hashtable[index];
  while(head != NULL){
    if (strcmp(head->word, c->word) == 0){
      return;
    }
    head = head->next;
  }
  //the new cell cannot be NULL
  if (c == NULL){
    exit(1);
}
  else{
    //inserting the new cell
    c->next = hashtable[index];
    hashtable[index]= c;

}
}
void print_hash_table(){

  for(int i = 0; i <SIZE; i++){
    //if the hashcell has no word, then print nothing
    if(hashtable[i]==NULL){
      printf("%d: \n", i);
    }
    //create temp cell as reference to elements of hashtable
    HASHCELL *temp = hashtable[i];
    printf ("%d: ",i);
    //iterating through
    while(temp != NULL){
      printf("%s ", temp->word);
      temp = temp->next;
    }
    printf("\n");
  }
}

int main(){
  char str[100];
  //initializing the hashtable to NULL
  for (int i = 0; i < SIZE; i++)
     {
         hashtable[i] = NULL;
     }

  while (scanf("%s", &str)!= EOF){
    insert_hash_cell(str);
  }
  for (int i = 0; i < SIZE; i++){
    HASHCELL *temp = hashtable[i];
  
    while(temp != NULL){
      insert_node(temp->word);
      temp = temp->next;
    }
    }
  print_tree(root);
\
}
