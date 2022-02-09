long sumList(CELL *head){
    CELL *p = head;
    if(p->x =0){
        return 0;
    }
    long sum = 0;
    while( p != NULL){
        sum +=  p->x;
        p = p->next;
    }
    return sum;
}

CELL *p = head;
if(head == NULL){
    return;
}
while (p->next!=NULL){
    p = p->next;
}
p->next = head;
p->next->value = head->value;

CELL *p = head;
if(head == NULL){
    return 0;
}
int sum = 1;
p = p->next;
while (p != head){
    sum ++;
    p = p->next;
}
return sum;