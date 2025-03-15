	.file	"main.cpp"
	.intel_syntax noprefix
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB2016:
	.seh_endprologue
	mov	eax, edx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Hello, World!\0"
	.section	.text.unlikely,"x"
.LCOLDB1:
	.section	.text.startup,"x"
.LHOTB1:
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2263:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	lea	rdx, .LC0[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rbx, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	rsi, QWORD PTR 240[rbx+rax]
	test	rsi, rsi
	je	.L8
	cmp	BYTE PTR 56[rsi], 0
	je	.L5
	movsx	edx, BYTE PTR 67[rsi]
.L6:
	mov	rcx, rbx
	call	_ZNSo3putEc
	mov	rcx, rax
	call	_ZNSo5flushEv
	xor	eax, eax
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L5:
	mov	rcx, rsi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, QWORD PTR [rsi]
	mov	edx, 10
	lea	rcx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rcx
	je	.L6
	mov	edx, 10
	mov	rcx, rsi
	call	rax
	movsx	edx, al
	jmp	.L6
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	56
	.seh_savereg	rbx, 40
	.seh_savereg	rsi, 48
	.seh_endprologue
main.cold:
.L8:
	call	_ZSt16__throw_bad_castv
	nop
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE1:
	.section	.text.startup,"x"
.LHOTE1:
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r3) 14.2.0"
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
