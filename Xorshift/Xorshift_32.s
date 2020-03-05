.section .text # Instructions
.globl _start

.equ START_VALUE, 1

_start:

    addi t1, zero, START_VALUE

main_loop:

    slli t2, t1, 0xD
    xor t1, t2, t1      # x ^= x << 13

    srli t2, t1, 0x11
    xor t1, t2, t1      # x ^= x >> 17

    slli t2, t1, 0x5
    xor t1, t2, t1      # x ^= x << 5

    andi t0, t1, 0x1
    bnez t0, br_taken   # if (x % 2 == 0)

    nop                 # smth for prediction

br_taken:

    nop			# smth after)

    j main_loop # Direct Unconditional Backward branch

