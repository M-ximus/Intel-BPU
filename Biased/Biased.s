.section .text # Instructions
.globl _start

_start:

main_loop:

# smth after uncoditional branch
    nop

    beqz zero, br_taken

    nop

br_taken:

    nop

    j main_loop # Direct Unconditional Backward branch

