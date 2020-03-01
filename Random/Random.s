.section .rodata # Read-only data

rand_data:
    .word 0xB5FA8C75 # 4 random 8-bit numbers to create random values 


.section .text # Instructions
.globl _start

_start:

    lw t0, rand_data # reg-reg operations faster in real life
    mv t1, zero	# counter that can be overflowed by inc. But SRL use only low 5 bits of rs2    

main_loop:

    mv t2, t0 # copy for logic operations
    
    srl t2, t1
    andi t2, t2, 1 # take curent bit from copy

    bnez t2, br_taken
    
    nop # smth for prediction

br_taken:

    addi t1, t1, 1 # inc counter

    j main_loop # Direct Unconditional Backward branch

