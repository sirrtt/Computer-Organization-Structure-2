.data				#khai bao du lieu sau .data
	var1: .word 23		#khai b�o var1 l� bien word c� gi� tri 23
.text				#viet chuong tr�nh sau .text
__start:
	lw $t0, var1		#$t0=var1
	li $t1, 5		#$t1=5
	sw $t1, var1		#var1=$t1
