;
; File generated by cc65 v 2.19 - Git 925a589
;
	.fopt		compiler,"cc65 v 2.19 - Git 925a589"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_clrscr
	.import		_gotoxy
	.import		_cprintf
	.import		_strlen
	.export		_main

.segment	"RODATA"

S0004:
	.byte	$54,$69,$6D,$65,$3A,$20,$25,$64,$00

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

	ldy     #$11
	jsr     subysp
	ldy     #$10
L0002:	lda     M0001,y
	sta     (sp),y
	dey
	bpl     L0002
	ldy     #$15
	jsr     subysp
	ldy     #$14
L0003:	lda     M0002,y
	sta     (sp),y
	dey
	bpl     L0003
	jsr     decsp6
	ldy     #$05
L0004:	lda     M0003,y
	sta     (sp),y
	dey
	bpl     L0004
	ldx     #$00
	lda     #$00
	jsr     pushax
	jsr     _clrscr
	ldx     #$00
	lda     #$20
	jsr     pushax
	lda     #$1F
	jsr     leaa0sp
	jsr     _strlen
	jsr     tossubax
	jsr     shrax1
	ldx     #$00
	jsr     pusha
	ldx     #$00
	lda     #$0D
	jsr     _gotoxy
	lda     #$1D
	jsr     leaa0sp
	jsr     pushax
	ldy     #$02
	jsr     _cprintf
	ldx     #$00
	lda     #$20
	jsr     pushax
	lda     #$0A
	jsr     leaa0sp
	jsr     _strlen
	jsr     tossubax
	jsr     shrax1
	ldx     #$00
	jsr     pusha
	ldx     #$00
	lda     #$0E
	jsr     _gotoxy
	lda     #$08
	jsr     leaa0sp
	jsr     pushax
	ldy     #$02
	jsr     _cprintf
	ldx     #$00
	lda     #$20
	jsr     pushax
	lda     #$04
	jsr     leaa0sp
	jsr     _strlen
	jsr     tossubax
	jsr     shrax1
	ldx     #$00
	jsr     pusha
	ldx     #$00
	lda     #$10
	jsr     _gotoxy
	lda     #$02
	jsr     leaa0sp
	jsr     pushax
	ldy     #$02
	jsr     _cprintf
L0005:	jmp     L0008
L0007:	jmp     L0005
L0008:	ldx     #$00
	lda     #$00
	jsr     pusha
	ldx     #$00
	lda     #$00
	jsr     _gotoxy
	lda     #<(S0004)
	ldx     #>(S0004)
	jsr     pushax
	ldy     #$03
	jsr     ldaxysp
	jsr     pushax
	ldy     #$04
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldy     #$04
	jsr     _cprintf
	jmp     L0007
	ldx     #$00
	lda     #$00
	jmp     L0001
L0001:	ldy     #$2E
	jsr     addysp
	rts

.segment	"RODATA"

M0001:
	.byte	$49,$20,$77,$69,$6C,$6C,$20,$6D,$61,$6B,$65,$20,$6D,$6F,$72,$65
	.byte	$00
M0002:
	.byte	$77,$68,$65,$6E,$20,$49,$20,$66,$65,$65,$6C,$20,$6C,$69,$6B,$65
	.byte	$20,$69,$74,$2E,$00
M0003:
	.byte	$52,$4F,$42,$4F,$54,$00

.endproc

