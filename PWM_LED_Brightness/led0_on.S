.text
.global led0_on

.equ LED_CNTRL, 0x41210000

led0_on:
	PUSH {R0, R1}
	LDR R0, = LED_CNTRL
	LDR R1, [R0]
	ORR R1, R1, #1
	STR R1, [R0]
	POP {R0, R1}
	BX LR
.end
