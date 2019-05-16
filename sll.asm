.text
main:
la $t0, A
addi $t5, $zero, 5
sw $t5, 16($t0) #A[4] = 5
#--------------------------
#-----------Before: In memory, Index = 5; A[4] = 5;

la $t0, A
la $t1, index

lw $t2, 0($t1)
sll $t3, $t2, 2 #index * 4(byte) = 16, calculate the appropiate postion in A[]
add $t3, $t0, $t3 #add A[] base address + offset

lw $t4, 0($t3) #int j = A[Index]
sw $t4, 0($t1) #index = j

#-----------After: In memory, Index = 5;

.data
index: .word 4 #int index = 4
A: .space 40 #Int A[10]

