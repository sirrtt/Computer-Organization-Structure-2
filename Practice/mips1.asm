.data
	buffer: .space 40
.text
main:
	li $v0, 8
	la $a0, buffer
	li $a1, 40
	syscall
	
	li $v0, 4
	la $a0, buffer
	syscall
	
	li $t1, 57
	la $t2, buffer
	add $t3, $t2, 6
	sb $t1, ($t3)
	
	li $v0, 4
	la $a0, buffer
	syscall 
