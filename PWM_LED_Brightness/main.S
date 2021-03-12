/*
	Uses PWM to control LED brightness
	Parameters:
	R0: PWM Window Value
	R1: DC Value

	R0 must be >= R1
*/

.text
.global main

main:
	MOV R0, #65535  //Fill R0 and R1 with parameters you want, use MOVW and MOVT if you want more than 16 bit number
	MOV R1, #10
	CMP R1, #0
	BEQ main  //if DC value is 0, just loop here forever
	CMP R1, R0
	BGT main  //if DC value is larger than window value, loop here forever too
	B PWM_start
.end
