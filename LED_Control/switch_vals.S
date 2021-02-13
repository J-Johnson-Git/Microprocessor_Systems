/*
	Fetch current values from switches, shift up into the top 8 bits, store in R1
*/

.text
.global fetch_sw_vals

.set SW_DATA, 0x41220000

fetch_sw_vals:
	ldr r1, = SW_DATA
	ldr r0, [r1]  //load R0 from R1
	cmp r0, #0
	beq fetch_sw_vals
	lsl r0, r0, #24  //shift data from switches left 24 bits
	bx lr
.end
