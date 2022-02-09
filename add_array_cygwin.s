        # LEAVE THIS PART ALONE
	.text
	.globl	add_array
	.def	add_array;	.scl	2;	.type	32;	.endef
	
add_array:

	# For Windows (including cygwin), the calling convention
	# is that the first four integer/pointer parameters (in order): 
	# %rcx, %rdx, %r8, %r9 (or their 32-bit halves, %ecx, %edx, etc.,
	# for 32-bit parameters).  The return value is placed in %rax
	# (or %eax for 32-bit return values).
	
	# In general, you can overwrite the 64-bit
	# registers %rax, %rcx, %rdx, %r8, %r9, %r10, %r11
	# as well as their 32-bit halves, %eax, %ecx,
	# %edx, %r8d, %r9d, %r10d, %r11d as you like. These are
	# the "caller-saved" registers.

	pushq	%rbp         # LEAVE THIS ALONE
	movq	%rsp, %rbp   # LEAVE THIS ALONE


	# sum = 0   -- put in %eax
	# for (i = 0 ; i < size; i++)   -- put i in %r8d
	#    sum += a[i]

	# %rcx holds the first parameter, which is a (address of the array)
	# %edx holds the size.

		movl   $0, %eax #the biggest value from the start 
        movl    $0, %edi #i =0
LOOP_TOP:
        cmpl    %ecx, %edi
        jge  DONE
        movl    (%rbx,%rdi,4), %r9d
        incl    %edi
        cmpl    %eax, %r9d
        jg  BIGGER
        jmp   LOOP_TOP

BIGGER:
        movl    %r9d, %eax
        jmp   LOOP_TOP

DONE:	
	# sum is alread in %eax, so no need to do anything eldse

	popq	%rbp    # LEAVE THIS ALONE
	retq            # LEAVE THIS ALONE
	
