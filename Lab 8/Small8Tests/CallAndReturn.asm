*
*	CallAndReturn.asm
*	Tests the calling to and return fro ma subroutine 
*	
*
	include "small8.mac"


OUTPORT0	EQU	$FFFE

TEST :
	CALL PROGRAM
INFINITE_LOOP:  
	CLRC
	BCCA	INFINITE_LOOP
PRORGRAM:
	LDAA	VALUE1		* $55
	STAR	D 	
	LDAA	VALUE2		* $AA
	ANDR	D		* Result $00
	BEQA	THERE
	ADCR	D		* should skip this
THERE:
	ADCR	D
	STAA	OUTPORT0
	RET

* Termination loop for hardware machine


* Data Area
VALUE1:	dc.b	$55
VALUE2:	dc.b	$AA

	END	BEGIN
