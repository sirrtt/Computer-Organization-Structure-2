.data										#khai bao du lieu sau dong .data	
	thongbao1: .asciiz  "Chao ban! Ban la sinh vien nam thu may?\n"		#khai bao va gan gia tri cho chuoi thongbao1 la “Chao ban! Ban la sinh vien nam thu may?” 
	thongbao2: .asciiz  "Hihi, minh la sinh vien nam thu 1 ^-^\n"		#khai bao va gan gia tri cho chuoi thongbao2 la “Hihi, minh la sinh vien nam thu 1 ^-^\n”
	chuoi1: .space 50						#khai bao chuoi ki tu voi 50 phan tu la chuoi1
	thongbao3: .asciiz  "Nhap so thu nhat: "			#khai bao va gan gia tri cho chuoi thongbao3 la “Nhap so thu nhat: ”
	thongbao4: .asciiz  "Nhap so thu hai: "				#khai bao va gan gia tri cho chuoi thongbao4 la “Nhap so thu hai: ”
	thongbao5: .asciiz  "Tong: "					#khai bao va gan gia tri cho chuoi thongbao3 la “Tong: ”
	a: .word 						#khai bao so nguyen a
	b: .word 						#khai bao so nguyen b
	c: .word 						#khai bao so nguyen c
.text								#viet chuong trinh sau dong .text

	#Khai bao va xuat ra cua so I/O 2 chuoi
	li $v0, 4						#lenh goi he thong xuat chuoi		
	la $a0, thongbao1					#$a0=dia chi cua chuoi thongbao1
	syscall							#lenh goi he thong thuc thi
	
	li $v0, 4						#lenh goi he thong xuat chuoi
	la $a0, thongbao2					#$a0=dia chi cua chuoi thongbao2
	syscall							#lenh goi he thong thuc thi
	
	#Xuat ra lai dung chuoi da nhap
	li $v0, 8						#lenh goi he thong doc chuoi
	la $a0, chuoi1						#$a0=dia chi cua chuoi chuoi1
	li $a1, 50						#$a1=50
	syscall							#lenh goi he thong thuc thi
	
	li $v0, 4						#lenh goi he thong xuat chuoi
	la $a0, chuoi1						#$a0=dia chi cua chuoi chuoi1
	syscall							#lenh goi he thong thuc thi 
	
	#Nhap vào 2 so nguyen sau do xuat tong cua 2 so nguyên nay
	li $v0, 4						#lenh goi he thong xuat chuoi
	la $a0, thongbao3					#$a0=dia chi cua chuoi thongbao3
	syscall							#lenh goi he thong thuc thi
	
	li $v0, 5						#lenh goi he thong doc so nguyen
	la $a2, a						#$a2=dia chi cua a
	syscall							#lenh goi he thong thuc thi
	move $a2, $v0						#dich chuyen noi dung cua $v0 vao $a2 ($a2=$v0)
	
	li $v0, 4						#lenh goi he thong xuat chuoi
	la $a0, thongbao4					#$a0=dia chi cua chuoi thongbao4
	syscall							#lenh goi he thong thuc thi
	
	li $v0, 5						#lenh goi he thong doc so nguyen
	la $a1, b						#$a1=dia chi cua b
	syscall							#lenh goi he thong thuc thi
	move $a1, $v0						#dich chuyen noi dung cua $v0 vao $a1 ($a1=$v0)
	
	li $v0, 4						#lenh goi he thong xuat chuoi
	la $a0, thongbao5					#$a0=dia chi cua chuoi thongbao5
	syscall							#lenh goi he thong thuc thi
	
	li $v0, 1						#lenh goi he thong xuat so nguyen
	la $a0, c						#$a1=dia chi cua c
	add $a0,$a1,$a2						#$a0=$a1+$a2
	syscall							#lenh goi he thong thuc thi
