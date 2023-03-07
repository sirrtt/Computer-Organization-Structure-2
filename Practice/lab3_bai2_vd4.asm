.data						#khai báo d? li?u sau dòng .data
	string1: .asciiz "Print this\n"	 	#khai báo chu?i string1 là chu?i kí t? 
.text						#vi?t ch??ng trình sau dòng .text
main:		
	li $v0, 4				#l?nh g?i h? th?ng xu?t s? nguyên
	la $a0, string1				#$a0=??a ch? c?a m?ng string1
	syscall					#l?nh g?i h? th?ng
