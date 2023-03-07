li $s2, 0
li $s0, 1
LOOP: 
sle $t1, $s0, $s1
bne $t1, $zero, exit
add $s2, $s2, $s0
addi $s0, $s0, 1
j LOOP
exit:
