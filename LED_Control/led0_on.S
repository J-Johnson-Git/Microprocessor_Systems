/*
	Turns on LED 0
*/

.text
.global led0_on
.equ LED_CTL, 0x41210000

led0_on:
	ldr r1, = LED_CTL
	ldr r0, [r1]	//get current value
	orr r0, r0, #1	//set the first bit (don't affect other bits)
	str r0, [r1]	//write back to LED_DATA
	bx lr		//return from subroutine
.end
