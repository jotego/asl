	cpu	053248
	page	0

	reset			; 00
	nmi			; 02
	firq			; 03
	irq			; 04
	leax05	,x		; 05 26
	leax06	a,x		; 06 a0
	leax07	>$2f40		; 07 07 2f 40
	leax	,x		; 08 26
	swi			; 5d
	clrnF	,x		; d1 26
	clr.nf	>$2f40		; d1 07 2f 40
	clr	,x		; 82 26
	exg	dp,s		; 3e 64
	tfr	x,dp		; 3f c2
	tfr3e	pc,x		; 3e a7
	exg3f	a,b		; 3f 10
	tst	,pc		; 92 76
	tst	<pcbyte,pc	; 92 74 01
pcbyte:	fcb	$5a
	tst	>pcword,pc	; 92 75 00 02
pcword:	fcb	$00
pcback:	fcb	$00
	tst	[<pcback,pc]	; 92 7c fd
	bra	branch_target	; 60 01
	nop			; ae
branch_target:
	nop			; ae
	tfr	a,b		; 3f 90
	tst	<*+129,pc	; 92 74 7f (maximum short displacement)
	cpu	052001
	tfr	a,b		; 3f 10 (legacy encoding unchanged)
	leax	,x		; 08 26
