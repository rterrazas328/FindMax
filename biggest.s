@Ricardo Terrazas
@CS 252-003
@Assignment 2
@biggest.s search through the array and find the number looked for. If that number is not in the array return -1.

	.global biggest
	.text

@parameters passed
@a1 = array pointer
@a2 = array size
@a3 = number to find


biggest: stmfd sp!, {v1-v6, lr}
	mov v1, #0		@index set to 0
loop:
	ldr v2, [a1]		@load value in array to v2
	cmp v2, a3		@compare (sub:v2-a3) and update status bits (z=1 if subtraction=0, meaning they're equal)
	beq found
	add v1, v1, #1		@increment index counter by +1
	add a1, a1, #4		@increment a1 to next element in array, do not update status bits
       subs a2, a2,#1		@a2-- and update status bits (z,n)
	beq endnotfound		@branch if the subtraction was = to 0 (beq checks the z bit)
	bne loop		@branch if z bit=0 (last set by cmp of a1 and a3) meaning they were not equal

found:
	mov a1, v1
	b end

endnotfound:	
	mov a1, #-1

end:
	ldmfd sp!, {v1-v6, pc}
	.end