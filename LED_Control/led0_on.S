/*
	Turns on LED 0
*/

.text
.global led0_on
.equ LED_CNTRL, 0x41210000

led0_on:
	LDR R1, = LED_CNTRL
	LDR R0, [R1]
	ORR R0, R0, #1	
	STR R0, [R1]
	BX LR	
.end
