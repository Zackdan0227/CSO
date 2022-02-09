        # LEAVE THIS PART ALONE
	.text	
	.globl	fac

fac:	
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


	# the parameter n will be in %ecx
	# this code is equivalent to:
	#   int prod = 1;         // all variables are 32-bit int's
        #   for(int i=1; i<=n; i++)
	#      prod *= i;
	#   return prod;
	#

	# put prod in %eax, since it is the 32-bit return value
	# we'll put i in %edx

	movl	$1,%eax		# prod = 1
	movl	$1,%edx		# i = 1
LOOP_TOP: 			# top of loop
	cmpl	%ecx,%edx	# compare i (%edx) to n (%ecx)
	jg	DONE		# if i > n, jump out of loop
	imull	%edx,%eax	#   prod *= i
	incl	%edx		#   i++
	jmp	LOOP_TOP	#   jump to top of loop
DONE:
	#nothing more to do, result is already in %eax
	
	popq	%rbp    # LEAVE THIS ALONE
	retq            # LEAVE THIS ALONE

