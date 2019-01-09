	.file	"text_sort.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"basic_string::_M_construct null not valid"
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.21, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.21:
.LFB2091:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbp
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	jne	.L2
	testq	%rdx, %rdx
	jne	.L19
.L2:
	movq	%rdx, %rbx
	subq	%r12, %rbx
	cmpq	$15, %rbx
	movq	%rbx, (%rsp)
	ja	.L20
	movq	0(%rbp), %rdx
	cmpq	$1, %rbx
	movq	%rdx, %rax
	jne	.L5
	movzbl	(%r12), %eax
	movb	%al, (%rdx)
	movq	0(%rbp), %rdx
.L6:
	movq	(%rsp), %rax
	movq	%rax, 8(%rbp)
	movb	$0, (%rdx,%rax)
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L21
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore_state
	xorl	%edx, %edx
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	(%rsp), %rdx
	movq	%rax, 0(%rbp)
	movq	%rdx, 16(%rbp)
.L4:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	0(%rbp), %rdx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L5:
	testq	%rbx, %rbx
	je	.L6
	jmp	.L4
.L19:
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
.L21:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2091:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.21, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.21
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.27,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.21
	.align 2
	.p2align 4,,15
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.23, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.23:
.LFB2093:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	16(%rdi), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rax, (%rdi)
	movq	%rsi, %rdi
	call	strlen@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	0(%rbp,%rax), %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.21
	.cfi_endproc
.LFE2093:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.23, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.23
	.p2align 4,,15
	.globl	_Z11txt_convertc
	.type	_Z11txt_convertc, @function
_Z11txt_convertc:
.LFB1564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movsbl	%dil, %ebp
	movl	%edi, %ebx
	movl	%ebp, %edi
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	call	isupper@PLT
	testl	%eax, %eax
	je	.L25
	movl	%ebp, %edi
	call	tolower@PLT
	movl	%eax, %ebx
.L25:
	movabsq	$7523094288207667809, %rax
	xorl	%edx, %edx
	movl	$97, %ecx
	movq	%rax, (%rsp)
	movabsq	$8101815670912281193, %rax
	movq	%rax, 8(%rsp)
	movabsq	$8680537053616894577, %rax
	movq	%rax, 16(%rsp)
	movl	$31353, %eax
	movw	%ax, 24(%rsp)
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L34:
	addq	$1, %rdx
	cmpq	$26, %rdx
	je	.L24
	movzbl	(%rsp,%rdx), %ecx
.L28:
	cmpb	%cl, %bl
	movl	%edx, %eax
	jne	.L34
.L24:
	movq	40(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L35
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1564:
	.size	_Z11txt_convertc, .-_Z11txt_convertc
	.p2align 4,,15
	.globl	_Z8txt_sortPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.type	_Z8txt_sortPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, @function
_Z8txt_sortPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:
.LFB1565:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1565
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	movq	%rdi, 32(%rsp)
	jle	.L36
	leal	-1(%rsi), %eax
	movq	$1, 8(%rsp)
	movq	8(%rsp), %rcx
	movq	%rdi, 16(%rsp)
	leaq	48(%rsp), %r13
	movl	%eax, 44(%rsp)
	addq	$1, %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rax
	cmpq	%rax, %rcx
	je	.L36
	.p2align 4,,10
	.p2align 3
.L49:
	movl	44(%rsp), %eax
	movq	16(%rsp), %rbx
	movq	32(%rsp), %rsi
	subl	%ecx, %eax
	movq	%rbx, %r12
	addq	$32, %rbx
	addq	%rcx, %rax
	movq	%rbx, 16(%rsp)
	salq	$5, %rax
	leaq	32(%rsi,%rax), %r14
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L38:
	addq	$32, %rbx
	cmpq	%rbx, %r14
	je	.L48
.L40:
	movq	(%r12), %r15
	movsbl	(%r15), %edi
	call	_Z11txt_convertc
	movl	%eax, %ebp
	movq	(%rbx), %rax
	movsbl	(%rax), %edi
	call	_Z11txt_convertc
	cmpb	%al, %bpl
	jle	.L38
	movq	8(%r12), %rdx
	leaq	16(%r13), %rax
	movq	%r15, %rsi
	movq	%r13, %rdi
	movq	%rax, 48(%rsp)
	addq	%r15, %rdx
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.27
.LEHE0:
	movq	%rbx, %rsi
	movq	%r12, %rdi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@PLT
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@PLT
.LEHE1:
	movq	48(%rsp), %rdi
	leaq	16(%r13), %rax
	cmpq	%rax, %rdi
	je	.L38
	addq	$32, %rbx
	call	_ZdlPv@PLT
	cmpq	%rbx, %r14
	jne	.L40
	.p2align 4,,10
	.p2align 3
.L48:
	addq	$1, 8(%rsp)
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	cmpq	%rax, %rcx
	jne	.L49
.L36:
	movq	88(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L50
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L45:
	.cfi_restore_state
	movq	48(%rsp), %rdi
	addq	$16, %r13
	movq	%rax, %rbx
	cmpq	%r13, %rdi
	je	.L43
	call	_ZdlPv@PLT
.L43:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L50:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1565:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1565:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1565-.LLSDACSB1565
.LLSDACSB1565:
	.uleb128 .LEHB0-.LFB1565
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1565
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L45-.LFB1565
	.uleb128 0
	.uleb128 .LEHB2-.LFB1565
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1565:
	.text
	.size	_Z8txt_sortPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .-_Z8txt_sortPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"{"
.LC2:
	.string	"basic_string::append"
.LC3:
	.string	", "
.LC4:
	.string	"}"
	.text
	.p2align 4,,15
	.globl	_Z9showArrayPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.type	_Z9showArrayPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, @function
_Z9showArrayPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:
.LFB1566:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1566
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	16(%rdi), %rax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edx, %r13d
	leaq	1+.LC1(%rip), %rdx
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	leaq	-1(%rdx), %rsi
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rax, (%rdi)
	movq	%rax, 8(%rsp)
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.21
.LEHE3:
	testl	%r13d, %r13d
	jle	.L52
	leal	-1(%r13), %r14d
	xorl	%r12d, %r12d
	movabsq	$9223372036854775807, %r15
	.p2align 4,,10
	.p2align 3
.L54:
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
	cmpl	%r12d, %r14d
	je	.L56
	movq	%r15, %rax
	subq	8(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L63
	leaq	.LC3(%rip), %rsi
	movl	$2, %edx
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L56:
	addl	$1, %r12d
	addq	$32, %rbx
	cmpl	%r12d, %r13d
	jne	.L54
.L52:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 8(%rbp)
	je	.L64
	leaq	.LC4(%rip), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L63:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE4:
.L60:
	movq	0(%rbp), %rdi
	cmpq	8(%rsp), %rdi
	movq	%rax, %rbx
	je	.L59
	call	_ZdlPv@PLT
.L59:
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L64:
	leaq	.LC2(%rip), %rdi
.LEHB6:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE6:
	.cfi_endproc
.LFE1566:
	.section	.gcc_except_table
.LLSDA1566:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1566-.LLSDACSB1566
.LLSDACSB1566:
	.uleb128 .LEHB3-.LFB1566
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1566
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L60-.LFB1566
	.uleb128 0
	.uleb128 .LEHB5-.LFB1566
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1566
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L60-.LFB1566
	.uleb128 0
.LLSDACSE1566:
	.text
	.size	_Z9showArrayPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .-_Z9showArrayPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.section	.rodata.str1.1
.LC5:
	.string	"fsx"
.LC6:
	.string	"gkx"
.LC7:
	.string	"pop"
.LC8:
	.string	"uix"
.LC9:
	.string	"aix"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1567:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1567
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC5(%rip), %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$224, %rsp
	.cfi_def_cfa_offset 256
	leaq	48(%rsp), %rbx
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	movq	%rbx, %rdi
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.23
.LEHE7:
	leaq	32(%rbx), %rdi
	leaq	.LC6(%rip), %rsi
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.23
.LEHE8:
	leaq	64(%rbx), %rdi
	leaq	.LC7(%rip), %rsi
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.23
.LEHE9:
	leaq	96(%rbx), %rdi
	leaq	.LC8(%rip), %rsi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.23
.LEHE10:
	leaq	128(%rbx), %rdi
	leaq	.LC9(%rip), %rsi
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.23
.LEHE11:
	leaq	16(%rsp), %rbp
	movl	$5, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB12:
	call	_Z9showArrayPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.LEHE12:
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB13:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE13:
	movq	16(%rsp), %rdi
	leaq	16(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L75
	call	_ZdlPv@PLT
.L75:
	movl	$5, %esi
	movq	%rbx, %rdi
.LEHB14:
	call	_Z8txt_sortPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	movl	$5, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_Z9showArrayPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.LEHE14:
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB15:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE15:
	movq	16(%rsp), %rdi
	leaq	16(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L76
	call	_ZdlPv@PLT
.L76:
	subq	$-128, %rbx
.L78:
	movq	(%rbx), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L77
	call	_ZdlPv@PLT
.L77:
	subq	$32, %rbx
	cmpq	%rbp, %rbx
	jne	.L78
	xorl	%eax, %eax
	movq	216(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L110
	addq	$224, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L110:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L93:
.L109:
	movq	16(%rsp), %rdi
	addq	$16, %rbp
	movq	%rax, %r12
	cmpq	%rbp, %rdi
	je	.L87
	call	_ZdlPv@PLT
.L87:
	movq	%r12, %rbp
.L85:
	leaq	160(%rbx), %r12
.L89:
	subq	$32, %r12
	movq	(%r12), %rdi
	leaq	16(%r12), %rax
	cmpq	%rax, %rdi
	je	.L88
	call	_ZdlPv@PLT
.L88:
	cmpq	%rbx, %r12
	jne	.L89
	movq	%rbp, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.L92:
	jmp	.L109
.L94:
	movq	%rax, %rbp
	jmp	.L85
.L91:
	xorl	%edx, %edx
.L68:
	movl	$4, %ebp
	subq	%rdx, %rbp
	salq	$5, %rbp
	addq	%rbx, %rbp
.L82:
	cmpq	%rbx, %rbp
	je	.L80
	subq	$32, %rbp
	movq	0(%rbp), %rdi
	leaq	16(%rbp), %rdx
	cmpq	%rdx, %rdi
	je	.L82
	movq	%rax, 8(%rsp)
	call	_ZdlPv@PLT
	movq	8(%rsp), %rax
	jmp	.L82
.L98:
	movl	$1, %edx
	jmp	.L68
.L96:
	movl	$3, %edx
	jmp	.L68
.L95:
	movl	$4, %edx
	jmp	.L68
.L97:
	movl	$2, %edx
	jmp	.L68
.L80:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE16:
	.cfi_endproc
.LFE1567:
	.section	.gcc_except_table
.LLSDA1567:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1567-.LLSDACSB1567
.LLSDACSB1567:
	.uleb128 .LEHB7-.LFB1567
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L95-.LFB1567
	.uleb128 0
	.uleb128 .LEHB8-.LFB1567
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L96-.LFB1567
	.uleb128 0
	.uleb128 .LEHB9-.LFB1567
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L97-.LFB1567
	.uleb128 0
	.uleb128 .LEHB10-.LFB1567
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L98-.LFB1567
	.uleb128 0
	.uleb128 .LEHB11-.LFB1567
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L91-.LFB1567
	.uleb128 0
	.uleb128 .LEHB12-.LFB1567
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L94-.LFB1567
	.uleb128 0
	.uleb128 .LEHB13-.LFB1567
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L92-.LFB1567
	.uleb128 0
	.uleb128 .LEHB14-.LFB1567
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L94-.LFB1567
	.uleb128 0
	.uleb128 .LEHB15-.LFB1567
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L93-.LFB1567
	.uleb128 0
	.uleb128 .LEHB16-.LFB1567
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE1567:
	.section	.text.startup
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z11txt_convertc, @function
_GLOBAL__sub_I__Z11txt_convertc:
.LFB2069:
	.cfi_startproc
	leaq	_ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2069:
	.size	_GLOBAL__sub_I__Z11txt_convertc, .-_GLOBAL__sub_I__Z11txt_convertc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z11txt_convertc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
