.data						#khai b�o d? li?u sau d�ng .data
	string1: .asciiz "Print this\n"	 	#khai b�o chu?i string1 l� chu?i k� t? 
.text						#vi?t ch??ng tr�nh sau d�ng .text
main:		
	li $v0, 4				#l?nh g?i h? th?ng xu?t s? nguy�n
	la $a0, string1				#$a0=??a ch? c?a m?ng string1
	syscall					#l?nh g?i h? th?ng
