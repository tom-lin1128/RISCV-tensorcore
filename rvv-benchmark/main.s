	.file	"main.c"
	.option nopic
	.option checkconstraints
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	2
.LC7:
	.string	"ABCDEFGH"
	.align	2
.LC8:
	.string	">>> Testing strcpy.s..."
	.align	2
.LC9:
	.string	">>> src = %s, dst = %s\n"
	.align	2
.LC10:
	.string	">>> after calling strcpy(dst, src):"
	.align	2
.LC11:
	.string	"Pass!"
	.align	2
.LC12:
	.string	"Failed!"
	.align	2
.LC13:
	.string	">>> %s\n\n"
	.text
	.align	1
	.globl	test_strcpy
	.type	test_strcpy, @function
test_strcpy:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	lui	a5,%hi(.LC7)
	addi	a5,a5,%lo(.LC7)
	sw	a5,-28(s0)
	li	a5,1684234240
	addi	a5,a5,609
	sw	a5,-40(s0)
	li	a5,1751605248
	addi	a5,a5,1637
	sw	a5,-36(s0)
	sb	zero,-32(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	puts
	addi	a5,s0,-40
	mv	a2,a5
	lw	a1,-28(s0)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	addi	a5,s0,-40
	lw	a1,-28(s0)
	mv	a0,a5
	call	strcpy
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	puts
	addi	a5,s0,-40
	mv	a2,a5
	lw	a1,-28(s0)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	li	a5,1
	sb	a5,-17(s0)
	sw	zero,-24(s0)
	j	.L2
.L5:
	lw	a5,-24(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-24(a5)
	lw	a5,-24(s0)
	lw	a3,-28(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	beq	a4,a5,.L3
	sb	zero,-17(s0)
	j	.L4
.L3:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a4,-24(s0)
	li	a5,8
	ble	a4,a5,.L5
.L4:
	lbu	a5,-17(s0)
	beq	a5,zero,.L6
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L7
.L6:
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
.L7:
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	test_strcpy, .-test_strcpy
	.section	.rodata
	.align	2
.LC14:
	.string	">>> Testing strncpy.s..."
	.align	2
.LC15:
	.string	">>> after calling strncpy(dst, src, %d):\n"
	.text
	.align	1
	.globl	test_strncpy
	.type	test_strncpy, @function
test_strncpy:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	lui	a5,%hi(.LC7)
	addi	a5,a5,%lo(.LC7)
	sw	a5,-28(s0)
	li	a5,1684234240
	addi	a5,a5,609
	sw	a5,-40(s0)
	li	a5,1751605248
	addi	a5,a5,1637
	sw	a5,-36(s0)
	sb	zero,-32(s0)
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	puts
	addi	a5,s0,-40
	mv	a2,a5
	lw	a1,-28(s0)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	addi	a5,s0,-40
	li	a2,3
	lw	a1,-28(s0)
	mv	a0,a5
	call	strncpy
	li	a1,3
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	addi	a5,s0,-40
	mv	a2,a5
	lw	a1,-28(s0)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	li	a5,1
	sb	a5,-17(s0)
	sw	zero,-24(s0)
	j	.L9
.L12:
	lw	a5,-24(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-24(a5)
	lw	a5,-24(s0)
	lw	a3,-28(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	beq	a4,a5,.L10
	sb	zero,-17(s0)
	j	.L11
.L10:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L9:
	lw	a4,-24(s0)
	li	a5,2
	ble	a4,a5,.L12
.L11:
	lbu	a5,-17(s0)
	beq	a5,zero,.L13
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L14
.L13:
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
.L14:
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	test_strncpy, .-test_strncpy
	.section	.rodata
	.align	2
.LC16:
	.string	">>> Testing vvaddint32.s..."
	.align	2
.LC17:
	.string	">>> x = "
	.align	2
.LC18:
	.string	"%d, "
	.align	2
.LC19:
	.string	">>> y = "
	.align	2
.LC20:
	.string	">>> after calling vvaddint32(%d, x, y, z):\n"
	.align	2
.LC21:
	.string	">>> z = "
	.align	2
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	2
.LC1:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.text
	.align	1
	.globl	test_vvaddint32
	.type	test_vvaddint32, @function
test_vvaddint32:
	addi	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	addi	s0,sp,96
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	lw	a5,16(a5)
	sw	a1,-56(s0)
	sw	a2,-52(s0)
	sw	a3,-48(s0)
	sw	a4,-44(s0)
	sw	a5,-40(s0)
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	lw	a5,16(a5)
	sw	a1,-76(s0)
	sw	a2,-72(s0)
	sw	a3,-68(s0)
	sw	a4,-64(s0)
	sw	a5,-60(s0)
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	puts
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
	sw	zero,-20(s0)
	j	.L16
.L17:
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-40(a5)
	mv	a1,a5
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L16:
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L17
	li	a0,10
	call	putchar
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	sw	zero,-24(s0)
	j	.L18
.L19:
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-60(a5)
	mv	a1,a5
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L18:
	lw	a4,-24(s0)
	li	a5,4
	ble	a4,a5,.L19
	li	a0,10
	call	putchar
	addi	a3,s0,-96
	addi	a4,s0,-76
	addi	a5,s0,-56
	mv	a2,a4
	mv	a1,a5
	li	a0,5
	call	vvaddint32
	li	a1,5
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	printf
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	printf
	sw	zero,-28(s0)
	j	.L20
.L21:
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-80(a5)
	mv	a1,a5
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L20:
	lw	a4,-28(s0)
	li	a5,4
	ble	a4,a5,.L21
	li	a0,10
	call	putchar
	li	a5,1
	sb	a5,-29(s0)
	sw	zero,-36(s0)
	j	.L22
.L25:
	lw	a5,-36(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a4,-80(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	addi	a3,s0,-16
	add	a5,a3,a5
	lw	a3,-40(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	addi	a2,s0,-16
	add	a5,a2,a5
	lw	a5,-60(a5)
	add	a5,a3,a5
	beq	a4,a5,.L23
	sb	zero,-29(s0)
	j	.L24
.L23:
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L22:
	lw	a4,-36(s0)
	li	a5,4
	ble	a4,a5,.L25
.L24:
	lbu	a5,-29(s0)
	beq	a5,zero,.L26
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L27
.L26:
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
.L27:
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	nop
	lw	ra,92(sp)
	lw	s0,88(sp)
	addi	sp,sp,96
	jr	ra
	.size	test_vvaddint32, .-test_vvaddint32
	.section	.rodata
	.align	2
.LC22:
	.string	"Hello World!"
	.align	2
.LC23:
	.string	">>> Testing memcpy.s and strlen.s..."
	.align	2
.LC24:
	.string	">>> src = %s\n"
	.align	2
.LC25:
	.string	">>> after calling memcpy(dst, src, %zu)\n"
	.align	2
.LC26:
	.string	">>> dst = %s\n"
	.text
	.align	1
	.globl	test_memcpy_strlen
	.type	test_memcpy_strlen, @function
test_memcpy_strlen:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	lui	a5,%hi(.LC22)
	addi	a5,a5,%lo(.LC22)
	sw	a5,-28(s0)
	lw	a0,-28(s0)
	call	strlen
	mv	a5,a0
	addi	a5,a5,1
	sw	a5,-32(s0)
	lui	a5,%hi(.LC23)
	addi	a0,a5,%lo(.LC23)
	call	puts
	lw	a1,-28(s0)
	lui	a5,%hi(.LC24)
	addi	a0,a5,%lo(.LC24)
	call	printf
	lw	a1,-32(s0)
	lui	a5,%hi(.LC25)
	addi	a0,a5,%lo(.LC25)
	call	printf
	addi	a5,s0,-52
	lw	a2,-32(s0)
	lw	a1,-28(s0)
	mv	a0,a5
	call	memcpy
	addi	a5,s0,-52
	mv	a1,a5
	lui	a5,%hi(.LC26)
	addi	a0,a5,%lo(.LC26)
	call	printf
	li	a5,1
	sb	a5,-17(s0)
	sw	zero,-24(s0)
	j	.L29
.L32:
	lw	a5,-24(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-36(a5)
	lw	a5,-24(s0)
	lw	a3,-28(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	beq	a4,a5,.L30
	sb	zero,-17(s0)
	j	.L31
.L30:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L29:
	lw	a5,-24(s0)
	lw	a4,-32(s0)
	bgtu	a4,a5,.L32
.L31:
	lbu	a5,-17(s0)
	beq	a5,zero,.L33
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L34
.L33:
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
.L34:
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	nop
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	test_memcpy_strlen, .-test_memcpy_strlen
	.section	.rodata
	.align	2
.LC28:
	.string	">>> Testing saxpy.s..."
	.align	2
.LC29:
	.string	"%f, "
	.align	2
.LC30:
	.string	">>> a = %f\n"
	.align	2
.LC31:
	.string	">>> after calling saxpy(%d, a, x, y)\n"
	.align	2
.LC2:
	.word	1088421888
	.word	1088421888
	.word	1088421888
	.word	1088421888
	.word	1088421888
	.word	1088421888
	.word	1088421888
	.align	2
.LC3:
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.align	2
.LC4:
	.word	1097859072
	.word	1097859072
	.word	1097859072
	.word	1097859072
	.word	1097859072
	.word	1097859072
	.word	1097859072
	.text
	.align	1
	.globl	test_saxpy
	.type	test_saxpy, @function
test_saxpy:
	addi	sp,sp,-144
	sw	ra,140(sp)
	sw	s0,136(sp)
	addi	s0,sp,144
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	lw	a6,0(a5)
	lw	a0,4(a5)
	lw	a1,8(a5)
	lw	a2,12(a5)
	lw	a3,16(a5)
	lw	a4,20(a5)
	lw	a5,24(a5)
	sw	a6,-68(s0)
	sw	a0,-64(s0)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	sw	a3,-52(s0)
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	lui	a5,%hi(.LC3)
	addi	a5,a5,%lo(.LC3)
	lw	a6,0(a5)
	lw	a0,4(a5)
	lw	a1,8(a5)
	lw	a2,12(a5)
	lw	a3,16(a5)
	lw	a4,20(a5)
	lw	a5,24(a5)
	sw	a6,-96(s0)
	sw	a0,-92(s0)
	sw	a1,-88(s0)
	sw	a2,-84(s0)
	sw	a3,-80(s0)
	sw	a4,-76(s0)
	sw	a5,-72(s0)
	lui	a5,%hi(.LC4)
	addi	a5,a5,%lo(.LC4)
	lw	a6,0(a5)
	lw	a0,4(a5)
	lw	a1,8(a5)
	lw	a2,12(a5)
	lw	a3,16(a5)
	lw	a4,20(a5)
	lw	a5,24(a5)
	sw	a6,-124(s0)
	sw	a0,-120(s0)
	sw	a1,-116(s0)
	sw	a2,-112(s0)
	sw	a3,-108(s0)
	sw	a4,-104(s0)
	sw	a5,-100(s0)
	lui	a5,%hi(.LC27)
	flw	fa5,%lo(.LC27)(a5)
	fsw	fa5,-40(s0)
	lui	a5,%hi(.LC28)
	addi	a0,a5,%lo(.LC28)
	call	puts
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
	sw	zero,-20(s0)
	j	.L36
.L37:
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	flw	fa5,-52(a5)
	fcvt.d.s	fa5,fa5
	fsd	fa5,-136(s0)
	lw	a2,-136(s0)
	lw	a3,-132(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L36:
	lw	a4,-20(s0)
	li	a5,6
	ble	a4,a5,.L37
	li	a0,10
	call	putchar
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	sw	zero,-24(s0)
	j	.L38
.L39:
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	flw	fa5,-80(a5)
	fcvt.d.s	fa5,fa5
	fsd	fa5,-136(s0)
	lw	a2,-136(s0)
	lw	a3,-132(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L38:
	lw	a4,-24(s0)
	li	a5,6
	ble	a4,a5,.L39
	li	a0,10
	call	putchar
	flw	fa5,-40(s0)
	fcvt.d.s	fa5,fa5
	fsd	fa5,-136(s0)
	lw	a2,-136(s0)
	lw	a3,-132(s0)
	lui	a5,%hi(.LC30)
	addi	a0,a5,%lo(.LC30)
	call	printf
	li	a1,7
	lui	a5,%hi(.LC31)
	addi	a0,a5,%lo(.LC31)
	call	printf
	addi	a4,s0,-96
	addi	a5,s0,-68
	mv	a2,a4
	mv	a1,a5
	flw	fa0,-40(s0)
	li	a0,7
	call	saxpy
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	sw	zero,-28(s0)
	j	.L40
.L41:
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	flw	fa5,-80(a5)
	fcvt.d.s	fa5,fa5
	fsd	fa5,-136(s0)
	lw	a2,-136(s0)
	lw	a3,-132(s0)
	lui	a5,%hi(.LC29)
	addi	a0,a5,%lo(.LC29)
	call	printf
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L40:
	lw	a4,-28(s0)
	li	a5,6
	ble	a4,a5,.L41
	li	a0,10
	call	putchar
	li	a5,1
	sb	a5,-29(s0)
	sw	zero,-36(s0)
	j	.L42
.L45:
	lw	a5,-36(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	flw	fa4,-80(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	flw	fa5,-108(a5)
	feq.s	a5,fa4,fa5
	bne	a5,zero,.L43
	sb	zero,-29(s0)
	j	.L44
.L43:
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L42:
	lw	a4,-36(s0)
	li	a5,6
	ble	a4,a5,.L45
.L44:
	lbu	a5,-29(s0)
	beq	a5,zero,.L46
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L47
.L46:
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
.L47:
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	nop
	lw	ra,140(sp)
	lw	s0,136(sp)
	addi	sp,sp,144
	jr	ra
	.size	test_saxpy, .-test_saxpy
	.section	.rodata
	.align	2
.LC32:
	.string	">>> Testing sgemm.S..."
	.align	2
.LC33:
	.string	"Note that this function can still pass but got the wrong answer."
	.align	2
.LC5:
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.align	2
.LC6:
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.text
	.align	1
	.globl	test_sgemm_nn
	.type	test_sgemm_nn, @function
test_sgemm_nn:
	addi	sp,sp,-1584
	sw	ra,1580(sp)
	sw	s0,1576(sp)
	addi	s0,sp,1584
	lui	a5,%hi(.LC5)
	addi	a4,a5,%lo(.LC5)
	addi	a5,s0,-276
	mv	a3,a4
	li	a4,256
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	lui	a5,%hi(.LC6)
	addi	a4,a5,%lo(.LC6)
	addi	a5,s0,-532
	mv	a3,a4
	li	a4,256
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	addi	a5,s0,-1556
	li	a4,1024
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	lui	a5,%hi(.LC32)
	addi	a0,a5,%lo(.LC32)
	call	puts
	addi	a2,s0,-1556
	addi	a4,s0,-532
	addi	a3,s0,-276
	li	a5,1
	sw	a5,0(sp)
	mv	a7,a2
	li	a6,1
	mv	a5,a4
	li	a4,1
	li	a2,4
	li	a1,16
	li	a0,16
	call	sgemm_nn
	li	a5,1
	sb	a5,-17(s0)
	lui	a5,%hi(.LC33)
	addi	a0,a5,%lo(.LC33)
	call	puts
	lbu	a5,-17(s0)
	beq	a5,zero,.L49
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L50
.L49:
	lui	a5,%hi(.LC12)
	addi	a5,a5,%lo(.LC12)
.L50:
	mv	a1,a5
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	nop
	lw	ra,1580(sp)
	lw	s0,1576(sp)
	addi	sp,sp,1584
	jr	ra
	.size	test_sgemm_nn, .-test_sgemm_nn
	.section	.rodata
	.align	2
.LC34:
	.string	"\nRunning rvv-benchmark..."
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	lui	a5,%hi(.LC34)
	addi	a0,a5,%lo(.LC34)
	call	puts
	call	test_strcpy
	call	test_strncpy
	call	test_vvaddint32
	call	test_memcpy_strlen
	call	test_saxpy
	call	test_sgemm_nn
	li	a5,0
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
.LC27:
	.word	1073741824
	.ident	"GCC: (GNU) 9.2.0"
