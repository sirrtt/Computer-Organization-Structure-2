.data
	thongbao: .asciiz "Moi Nhap: "
	buffer: .space 50
.text
li $v0, 4
la $a0, thongbao
syscall

li $v0, 8
la $a0, buffer
li $a1, 30
syscall
 
li $v0, 4
la $a0, buffer
syscall

li $t0, 64 #ky tu @
la $t2, buffer
addi $t4, $t2, 2

loop:
lb $t7, ($t4)
beq $t7, 10, exit
sb $t0, ($t4)
addi $t4, $t4, 1
j loop

exit:
li $v0, 4
la $a0, buffer
syscall