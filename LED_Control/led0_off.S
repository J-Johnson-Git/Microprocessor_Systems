/*
	Turns off LED 0
*/

.text
.global led0_off
.equ LED_CTL, 0x41210000

led0_off:
	ldr r1, = LED_CTL
	ldr r0, [r1]	//get current value
	and r0, r0, #0	//clear the first bit to turn off
	str r0, [r1]	//write back to LED_DATA
	bx lr		//return from subroutine
.end
