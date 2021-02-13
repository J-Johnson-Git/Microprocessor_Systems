/*
	Creates a soft delay through subtraction. R0 needs to be loaded with delay value
*/

.text
.global delay

delay:
	subs r0, r0, #1  //subtract 1 from r0 (which should be loaded beforehand)
	bne delay
	bx lr  //return to where subroutine was called from
.end
