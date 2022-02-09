_sumList:
    pushq   %rbp
    movq   %rsp, %rbp
    movq    %rdi, %rdx #p = head
    movq    $0, %rax

LOOP_TOP:
    cmp $0, %rdx
    je  DONE
    addq    0(%rdx), %rax
    movq    8(%rdx), %rdx
    jmp LOOP_TOP

DONE:
    popq    %rbp
    ret



void g(int x, int y, int z, int *b) {
int a[3];
a[0] = x;
a[1] = y;
a[2] = z;
memcpy(b,a,12);
}
%rax, %rcx, %rdx, %r8,
_memcpy:
pushq   %rbp
movq    %rsp, %rbp

subq    $32, %rsp


movq    $0, %rbx
movq    %ecx, -12(%rbp,%rbx,4)

movq    %edx, -16(%rbp,%rbx,4)

movq    %r8d, -20(%rbp, %rbx, 4)

leaq    -12(%rbp,%rbx,4), %rcx
leaq    %r9d, %rdx
movq    $12, %r8

subq	$32,%rsp  		
call	memcpy		
addq	$32,%rsp

DONE:
addq    $32, %rsbp
popq    $rbp
ret
