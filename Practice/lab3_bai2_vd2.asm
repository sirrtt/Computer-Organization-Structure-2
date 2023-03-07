.data				#khai bao du lieu sau dòng .data
	array1: .space 12	#khai bao mang array1 là mang có 12 gia tri lien tuc
.text				#viet chuong trình sau dòng .text
__start:			
	la $t0, array1		#$t0=dia chi cua mang array1
	li $t1, 5		#$t1=5
	sw $t1, ($t0)		#$t0+0=$t1
	li $t1, 13		#$t1=13
	sw $t1, 4($t0)		#t0+4=$t1
	li $t1, -7		#$t1=-7
	sw $t1, 8($t0)		#$t0+8=$t1
