/*
	Toggles state of LED 0 (ensure system isn't getting reset in run config
*/

.text
.global led0_toggle
.equ LED_CTL, 0x41210000

led0_toggle:
	ldr r1, = LED_CTL
	ldr r0, [r1]	//get current value
	eor r0, r0, #1	//xor first bit to toggle
	str r0, [r1]	//write back to LED_DATA
	bx lr		//return from subroutine
.end
