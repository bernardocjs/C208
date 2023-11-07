.data

array1: .word 1, 2, 3, 4, 5

array2: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21

array3: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15

array4: .word 1, 2, 3 

.text

# Exercise 1
la $s1, array3
lw $t1, 60($s1)

li $t2, 0
li $t3, 5

sub $t2, $t1, $t3

# Exercise 2
la $s1, array1
la $s2, array4
lw $t1, 20($s1)
lw $t2, 12($s2)

li $t3, 0

add $t3, $t1, $t2

# Exercise 3
la $s1, array2
lw $t1, 84($s1)

li $t2, 21
li $t3, 0

sub $t3, $t2, $t1
