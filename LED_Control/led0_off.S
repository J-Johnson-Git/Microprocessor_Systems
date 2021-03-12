/*
	Turns off LED 0
*/

.text
.global led0_off
.equ LED_CNTRL, 0x41210000

led0_off:
	LDR R1, = LED_CNTRL
	LDR R0, [R1]	
	AND R0, R0, #0	
	STR R0, [R1]
	BX LR		
.end
