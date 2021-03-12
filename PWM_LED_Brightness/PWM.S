/*
	PWM main subroutine
	Parameters:
	R0: PWM Window Value
	R1: DC Value
*/

.text
.global PWM_start

PWM_start:
	BL led0_on
	//Create another label avoid branching to led0_on everytime we loop this subroutine
	PWM:
		SUBS R0, R0, #1
		CMP R0, R1
		BLEQ led0_off
		CMP R0, #0
		BNE PWM
		B main
	.end
.end
