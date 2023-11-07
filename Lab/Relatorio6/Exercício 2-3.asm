.data
a: .word 4, 5

.text

li $t1, 0 

la $s1, a     
lw $t2, 0($s1) 
lw $t3, 4($s1) 

blt $t2, 5, if 
j else         

if: 
    addi $t1, $t1, 2  
    sw   $t1, 0($s1)  
    j exit
else:
    addi $t1, $t3, 10
exit:
