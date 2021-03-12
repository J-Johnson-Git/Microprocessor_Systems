/*
	Creates a soft delay through subtraction. 
	R0 needs to be loaded with delay value
*/

.text
.global delay

delay:
	SUBS R0, R0, #1 
	BNE delay
	BX LR  
.end
