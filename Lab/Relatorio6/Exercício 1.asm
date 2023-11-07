.data
input:  .asciiz 
output: .asciiz 

.text

li $v0, 4
la $a0, input
syscall

li $v0, 5
syscall
move $t0, $v0

li $t1, 1 
li $t2, 0 
li $t3, 0
li $t4, 0 
li $t5, 0 

while: ble  $t1, $t0, loop 
j exit                    
loop:
    add  $t2, $t2, $t1  
    mul  $t4, $t1, $t1  
    add  $t5, $t5, $t4  
    addi $t1, $t1, 1  
    j while
exit:
    
mul $t3, $t2, $t2 
sub $t6, $t3, $t5
    
li $v0, 4
la $a0, output
syscall

li $v0, 1
move $a0, $t6
syscall
