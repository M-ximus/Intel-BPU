.section .text # Instructions
.globl _start

.equ PARAMETER, 9

_start:

    nop # for fun

main_loop:

    addi t0, zero, PARAMETER
    	
br_taken:

# smth like for()
    nop # we need this nop for small parameters for history of two-level predictor
    addi t0, t0, -1
    bnez t0, br_taken

# loop end
    nop
    nop

    j main_loop # Direct Unconditional Backward branch

