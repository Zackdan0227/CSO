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

	movl	$0,%eax   # sum = 0
	movl	$0,%r8d	  # i = 0
TOP:				# top of loop
	cmpl	%edx,%r8d       # compare i (%r8d) to size (%edx) -- remember, read it "backwards"
	jge     DONE            # if i > size, jump out of loop.
	addl	(%rcx,%r8,4),%eax      # sum += a[i].  The index, in this case %r8, used in the
	                               # indexed addressing mode has to be 64 bits. Since i is
	                               # contained in %r8d, using %r8 will give us the value of i.
	                                              
	incl	%r8d        # i++
	jmp	TOP         # jump to top of loop

DONE:	
	# sum is alread in %eax, so no need to do anything eldse

	popq	%rbp    # LEAVE THIS ALONE
	retq            # LEAVE THIS ALONE
	
