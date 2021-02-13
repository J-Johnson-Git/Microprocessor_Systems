/*
	Ensure that the system isn't getting reset in the run config for led0_toggle to work

	R0: Delay value for delay subroutine
	R1: Value of switches from fetch_sw_vals subroutine after calling
*/

.text
.global main

main:
	blink_LED:  //will toggle LED on and off at a rate according to which switches are high
		bl led0_toggle
		bl fetch_sw_vals
		bl delay
	b blink_LED

.end


