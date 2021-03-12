/*
	Toggles state of LED 0 
	(ensure system isn't getting reset in Vitis run config)
*/

.text
.global led0_toggle
.equ LED_CNTRL, 0x41210000

led0_toggle:
	LDR R1, = LED_CNTRL
	LDR R0, [R1]
	EOR R0, R0, #1	
	STR R0, [R1]
	BX LR		
.end
