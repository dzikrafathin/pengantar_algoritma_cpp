	.file	"convert_txt.cpp"
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.17, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.17:
.LFB2077:
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
	movq	%rdx, %rbx
	movq	%rdi, %rbp
	subq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	cmpq	$15, %rbx
	movq	%rbx, (%rsp)
	ja	.L12
	movq	(%rdi), %rdx
	cmpq	$1, %rbx
	movq	%rdx, %rax
	jne	.L4
	movzbl	(%rsi), %eax
	movb	%al, (%rdx)
	movq	(%rdi), %rdx
.L5:
	movq	(%rsp), %rax
	movq	%rax, 8(%rbp)
	movb	$0, (%rdx,%rax)
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L13
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
.L12:
	.cfi_restore_state
	xorl	%edx, %edx
	movq	%rsp, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	(%rsp), %rdx
	movq	%rax, 0(%rbp)
	movq	%rdx, 16(%rbp)
.L3:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	0(%rbp), %rdx
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L4:
	testq	%rbx, %rbx
	je	.L5
	jmp	.L3
.L13:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2077:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.17, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.17
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.21,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.17
	.p2align 4,,15
	.globl	_Z9arraySortPii
	.type	_Z9arraySortPii, @function
_Z9arraySortPii:
.LFB1564:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L14
	leal	-1(%rsi), %r11d
	movl	$1, %r9d
	addq	$4, %rdi
	movq	%rdi, %r8
	leal	-2(%rsi), %r10d
	addq	$1, %r11
	cmpq	%r11, %r9
	je	.L14
	.p2align 4,,10
	.p2align 3
.L20:
	movl	%r10d, %eax
	addq	%r9, %rax
	leaq	(%rdi,%rax,4), %rsi
	movq	%r8, %rax
	.p2align 4,,10
	.p2align 3
.L17:
	movl	-4(%r8), %edx
	movl	(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L16
	movl	%ecx, -4(%r8)
	movl	%edx, (%rax)
.L16:
	addq	$4, %rax
	cmpq	%rsi, %rax
	jne	.L17
	addq	$1, %r9
	addq	$4, %r8
	subl	$1, %r10d
	cmpq	%r11, %r9
	jne	.L20
.L14:
	rep ret
	.cfi_endproc
.LFE1564:
	.size	_Z9arraySortPii, .-_Z9arraySortPii
	.section	.text._ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z,"axG",@progbits,_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z,comdat
	.p2align 4,,15
	.weak	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
	.type	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z, @function
_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z:
.LFB1640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %r10
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %r12
	subq	$208, %rsp
	testb	%al, %al
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	je	.L22
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
.L22:
	movq	%fs:40, %rax
	movq	%rax, -200(%rbp)
	xorl	%eax, %eax
	leaq	30(%rsi), %rax
	leaq	-224(%rbp), %rcx
	andq	$-16, %rax
	movl	$32, -224(%rbp)
	movl	$48, -220(%rbp)
	subq	%rax, %rsp
	leaq	16(%rbp), %rax
	leaq	15(%rsp), %rbx
	movq	%rax, -216(%rbp)
	leaq	-192(%rbp), %rax
	andq	$-16, %rbx
	movq	%rbx, %rdi
	movq	%rax, -208(%rbp)
	call	*%r10
	leaq	16(%r12), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rdx, (%r12)
	movslq	%eax, %rdx
	addq	%rbx, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.21
	movq	-200(%rbp), %rdi
	xorq	%fs:40, %rdi
	movq	%r12, %rax
	jne	.L25
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L25:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1640:
	.size	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z, .-_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"{"
.LC1:
	.string	"%d"
.LC2:
	.string	"basic_string::append"
.LC3:
	.string	", "
.LC4:
	.string	"}"
	.text
	.p2align 4,,15
	.globl	_Z9showArrayB5cxx11Pii
	.type	_Z9showArrayB5cxx11Pii, @function
_Z9showArrayB5cxx11Pii:
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
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	1+.LC0(%rip), %rdx
	movq	%rdi, %rbp
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	leaq	-1(%rdx), %rsi
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	leaq	16(%rdi), %rax
	movq	%rax, (%rdi)
	movq	%rax, 8(%rsp)
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.17
.LEHE0:
	testl	%r13d, %r13d
	jle	.L27
	leal	-1(%r13), %eax
	leaq	16(%rsp), %r12
	xorl	%ebx, %ebx
	movabsq	$9223372036854775807, %r15
	movq	%rax, %r13
	addq	$1, %rax
	movq	%rax, (%rsp)
	.p2align 4,,10
	.p2align 3
.L30:
	movl	(%r14,%rbx,4), %r8d
	movq	vsnprintf@GOTPCREL(%rip), %rsi
	leaq	.LC1(%rip), %rcx
	movl	$16, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
.LEHB1:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
.LEHE1:
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	%rbp, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE2:
	movq	16(%rsp), %rdi
	leaq	16(%r12), %rax
	cmpq	%rax, %rdi
	je	.L28
	call	_ZdlPv@PLT
.L28:
	cmpl	%ebx, %r13d
	je	.L32
	movq	%r15, %rax
	subq	8(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L43
	leaq	.LC3(%rip), %rsi
	movl	$2, %edx
	movq	%rbp, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.L32:
	addq	$1, %rbx
	cmpq	(%rsp), %rbx
	jne	.L30
.L27:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 8(%rbp)
	je	.L44
	leaq	.LC4(%rip), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
	movq	56(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%rbp, %rax
	jne	.L45
	addq	$72, %rsp
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
.L43:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE3:
.L39:
	movq	%rax, %rbx
.L36:
	movq	0(%rbp), %rdi
	cmpq	8(%rsp), %rdi
	je	.L37
	call	_ZdlPv@PLT
.L37:
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L45:
	call	__stack_chk_fail@PLT
.L44:
	leaq	.LC2(%rip), %rdi
.LEHB5:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE5:
.L40:
	movq	16(%rsp), %rdi
	addq	$16, %r12
	movq	%rax, %rbx
	cmpq	%r12, %rdi
	je	.L36
	call	_ZdlPv@PLT
	jmp	.L36
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
	.uleb128 .L39-.LFB1565
	.uleb128 0
	.uleb128 .LEHB2-.LFB1565
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L40-.LFB1565
	.uleb128 0
	.uleb128 .LEHB3-.LFB1565
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L39-.LFB1565
	.uleb128 0
	.uleb128 .LEHB4-.LFB1565
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1565
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L39-.LFB1565
	.uleb128 0
.LLSDACSE1565:
	.text
	.size	_Z9showArrayB5cxx11Pii, .-_Z9showArrayB5cxx11Pii
	.section	.rodata.str1.1
.LC5:
	.string	"tulisan"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1566:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1566
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	7+.LC5(%rip), %rdx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	leaq	-144(%rbp), %r12
	leaq	-7(%rdx), %rsi
	subq	$120, %rsp
	movq	%r12, %rdi
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movabsq	$7523094288207667809, %rax
	movq	%rax, -80(%rbp)
	movabsq	$8101815670912281193, %rax
	movq	%rax, -72(%rbp)
	movabsq	$8680537053616894577, %rax
	movq	%rax, -64(%rbp)
	movl	$31353, %eax
	movw	%ax, -56(%rbp)
	leaq	16(%r12), %rax
	movq	%rax, -144(%rbp)
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.17
.LEHE6:
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	leaq	18(,%rdx,4), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
.LEHB7:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movq	-136(%rbp), %rdx
	movq	%rsp, %rbx
	testq	%rdx, %rdx
	je	.L47
	movq	-144(%rbp), %r8
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L51:
	movzbl	(%r8,%rdi), %esi
	xorl	%eax, %eax
	movl	$97, %ecx
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L48:
	addq	$1, %rax
	cmpq	$26, %rax
	je	.L49
	movzbl	-80(%rbp,%rax), %ecx
.L50:
	cmpb	%cl, %sil
	jne	.L48
	movl	%eax, (%rbx,%rdi,4)
.L49:
	addq	$1, %rdi
	cmpq	%rdi, %rdx
	jne	.L51
.L47:
	leaq	-112(%rbp), %r13
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	_Z9showArrayB5cxx11Pii
.LEHE7:
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB8:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE8:
	movq	-112(%rbp), %rdi
	addq	$16, %r13
	cmpq	%r13, %rdi
	je	.L52
	call	_ZdlPv@PLT
.L52:
	movq	-136(%rbp), %rdx
	testl	%edx, %edx
	jle	.L56
	leal	-1(%rdx), %r11d
	leaq	4(%rbx), %r13
	movl	$1, %r9d
	leal	-2(%rdx), %r10d
	addq	$1, %r11
	movq	%r13, %rdi
	cmpq	%r11, %r9
	je	.L56
	.p2align 4,,10
	.p2align 3
.L81:
	movl	%r10d, %eax
	addq	%r9, %rax
	leaq	0(%r13,%rax,4), %r8
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L58:
	movl	-4(%rdi), %ecx
	movl	(%rax), %esi
	cmpl	%esi, %ecx
	jle	.L57
	movl	%esi, -4(%rdi)
	movl	%ecx, (%rax)
.L57:
	addq	$4, %rax
	cmpq	%r8, %rax
	jne	.L58
	addq	$1, %r9
	addq	$4, %rdi
	subl	$1, %r10d
	cmpq	%r11, %r9
	jne	.L81
.L56:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L55
	.p2align 4,,10
	.p2align 3
.L54:
	movslq	(%rbx,%rax,4), %rdx
	movzbl	-80(%rbp,%rdx), %ecx
	movq	-144(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
	movq	-136(%rbp), %rdx
	addq	$1, %rax
	cmpq	%rax, %rdx
	ja	.L54
.L55:
	movq	-144(%rbp), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB9:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE9:
	movq	-144(%rbp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	.L60
	call	_ZdlPv@PLT
.L60:
	xorl	%eax, %eax
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L82
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L67:
	.cfi_restore_state
	movq	%rax, %rbx
.L63:
	movq	-144(%rbp), %rdi
	addq	$16, %r12
	cmpq	%r12, %rdi
	je	.L64
	call	_ZdlPv@PLT
.L64:
	movq	%rbx, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L82:
	call	__stack_chk_fail@PLT
.L68:
	movq	-112(%rbp), %rdi
	addq	$16, %r13
	movq	%rax, %rbx
	cmpq	%r13, %rdi
	je	.L63
	call	_ZdlPv@PLT
	jmp	.L63
	.cfi_endproc
.LFE1566:
	.section	.gcc_except_table
.LLSDA1566:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1566-.LLSDACSB1566
.LLSDACSB1566:
	.uleb128 .LEHB6-.LFB1566
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB1566
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L67-.LFB1566
	.uleb128 0
	.uleb128 .LEHB8-.LFB1566
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L68-.LFB1566
	.uleb128 0
	.uleb128 .LEHB9-.LFB1566
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L67-.LFB1566
	.uleb128 0
	.uleb128 .LEHB10-.LFB1566
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE1566:
	.section	.text.startup
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z9arraySortPii, @function
_GLOBAL__sub_I__Z9arraySortPii:
.LFB2059:
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
.LFE2059:
	.size	_GLOBAL__sub_I__Z9arraySortPii, .-_GLOBAL__sub_I__Z9arraySortPii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z9arraySortPii
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
