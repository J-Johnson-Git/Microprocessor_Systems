/*
	Fetch current values from switches, shift up into the top 8 bits, store in R0
*/

.text
.global fetch_sw_vals

.set SW_DATA, 0x41220000

fetch_sw_vals:
	LDR R1, = SW_DATA
	LDR R0, [R1]
	CMP R0, #0
	BEQ fetch_sw_vals
	LSL R0, R0, #24  //shift data from switches left 24 bits
	BX LR
.end
