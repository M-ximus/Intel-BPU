.section .text # Instructions
.globl _start

.equ PARAMETER, 2

_start:

    mv t0, zero

main_loop:

    addi t0, PARAMETER
    	
br_taken:

    subi t0, t0, 1
    bnez t0, br_taken

# loop end

    nop

    j main_loop # Direct Unconditional Backward branch

