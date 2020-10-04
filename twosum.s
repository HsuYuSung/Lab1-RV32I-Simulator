.data
len:    .word 4
target: .word 26
arr:    .word 2, 7, 11, 15

.text
# t3 = i, t4 = j


main:
        
		la      t1, arr
		addi	t1, t1, -4
		la		t2,	arr  # t1 = arr[0]
        addi	t2, t2, 0
       
        la      t0, target  
		lw		s1, 0(t0)		# s1 = target\
		la      t0, len
		lw		s0, 0(t0)   	 # s0 = len
		li      t3, 0	         # i = 0
        
        j       fori


fori:
		slt		t0, t3, s0
		beq		t0, x0, exit
		
		addi	t1, t1, 4
		la		t2, arr
		
		addi    t3, t3, 1    # i++
		mv		t4, t3
		
        j       forj


forj:
		slt		t0, t4, s0
		beq		t0, x0, fori
		
		addi	t2, t2, 4
		addi    t4, t4, 1    # j++
		j		if
        

if:		
		lw		s2, 0(t1)
		lw		s3, 4(t1)

        add     t5, s2, s3
        beq     t5, s1, print
       	j		forj
        

print:
		mv		a0, t3
        li      a7, 1
        ecall
        mv      a0, t4
        li      a7, 1
        ecall
		j		exit

exit: