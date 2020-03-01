.section .text # Instructions
.globl _start

.equ PARAMETER, 9

_start:

    nop # for fun

main_loop:

    addi t0, zero, PARAMETER
    	
br_taken:

# smth like for()

    addi t0, t0, -1
    bnez t0, br_taken

# loop end

    nop

    j main_loop # Direct Unconditional Backward branch

