.text
.global led0_off

.equ LED_CNTRL, 0x41210000

led0_off:
	PUSH {R0, R1}
	LDR R0, = LED_CNTRL
	LDR R1, [R0]
	AND R1, R1, #0
	STR R1, [R0]
	POP {R0, R1}
	BX LR
.end
