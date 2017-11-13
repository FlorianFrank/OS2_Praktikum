	.file	"IfxEth_Phy_Pef7071.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IfxEth_Phy_Pef7071_init
	.type	IfxEth_Phy_Pef7071_init, @function
IfxEth_Phy_Pef7071_init:
.LFB238:
	.file 1 "0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
	.loc 1 112 0
	.loc 1 113 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
.L2:
	.loc 1 113 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L2
.LVL0:
.LBB17:
.LBB18:
	.loc 1 179 0 is_stmt 1
	mov.u	%d15, 32768
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 3
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L3:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L3
.LBE18:
.LBE17:
.LBB19:
.LBB20:
	.loc 1 167 0
	movh.a	%a15, 61442
	.loc 1 172 0
	movh.a	%a2, 61442
	.loc 1 167 0
	lea	%a15, [%a15] -8176
	mov	%d2, 1
	.loc 1 172 0
	lea	%a2, [%a2] -8172
.L5:
.LVL1:
	.loc 1 167 0 discriminator 1
	st.w	[%a15]0, %d2
.L4:
	.loc 1 169 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L4
	.loc 1 172 0
	ld.w	%d15, [%a2]0
.LVL2:
.LBE20:
.LBE19:
	.loc 1 130 0
	jnz.t	%d15, 15, .L5
.LVL3:
.LBB21:
.LBB22:
	.loc 1 179 0
	mov.u	%d15, 63234
.LVL4:
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 1475
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L6:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 1
	jnz	%d15, .L6
.LVL5:
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.loc 1 179 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 579
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L7:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L7
.LVL6:
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	.loc 1 179 0
	mov	%d15, 257
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 259
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L8:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L8
.LVL7:
.LBE26:
.LBE25:
.LBB27:
.LBB28:
	.loc 1 179 0
	mov	%d15, 4608
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 3
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L9:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L9
.LBE28:
.LBE27:
	.loc 1 143 0
	mov	%d15, 1
	movh.a	%a15, hi:IfxEth_Phy_Pef7071_iPhyInitDone
	.loc 1 146 0
	mov	%d2, 1
	.loc 1 143 0
	st.w	[%a15] lo:IfxEth_Phy_Pef7071_iPhyInitDone, %d15
	.loc 1 146 0
	ret
.LFE238:
	.size	IfxEth_Phy_Pef7071_init, .-IfxEth_Phy_Pef7071_init
	.align 1
	.global	IfxEth_Phy_Pef7071_link
	.type	IfxEth_Phy_Pef7071_link, @function
IfxEth_Phy_Pef7071_link:
.LFB239:
	.loc 1 150 0
.LVL8:
	.loc 1 153 0
	movh.a	%a15, hi:IfxEth_Phy_Pef7071_iPhyInitDone
	ld.w	%d15, [%a15] lo:IfxEth_Phy_Pef7071_iPhyInitDone
	.loc 1 151 0
	mov	%d2, 0
	.loc 1 153 0
	jz	%d15, .L20
.LVL9:
.LBB29:
.LBB30:
.LBB31:
	.loc 1 167 0
	mov	%d15, 65
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L21:
	.loc 1 169 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L21
	.loc 1 172 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	ld.w	%d2, [%a15]0
.LVL10:
.LBE31:
.LBE30:
	.loc 1 157 0
	extr.u	%d2, %d2, 2, 1
.LVL11:
.L20:
.LBE29:
	.loc 1 161 0
	ret
.LFE239:
	.size	IfxEth_Phy_Pef7071_link, .-IfxEth_Phy_Pef7071_link
	.align 1
	.global	IfxEth_Phy_Pef7071_read_mdio_reg
	.type	IfxEth_Phy_Pef7071_read_mdio_reg, @function
IfxEth_Phy_Pef7071_read_mdio_reg:
.LFB240:
	.loc 1 165 0
.LVL12:
	.loc 1 167 0
	sh	%d5, 6
.LVL13:
	or	%d5, %d5, 1
	sh	%d4, %d4, 11
.LVL14:
	or	%d4, %d5
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d4
.L26:
	.loc 1 169 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L26
	.loc 1 172 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	ret
.LFE240:
	.size	IfxEth_Phy_Pef7071_read_mdio_reg, .-IfxEth_Phy_Pef7071_read_mdio_reg
	.align 1
	.global	IfxEth_Phy_Pef7071_write_mdio_reg
	.type	IfxEth_Phy_Pef7071_write_mdio_reg, @function
IfxEth_Phy_Pef7071_write_mdio_reg:
.LFB241:
	.loc 1 177 0
.LVL15:
	.loc 1 182 0
	sh	%d5, 6
.LVL16:
	.loc 1 179 0
	movh.a	%a15, 61442
	or	%d5, %d5, 3
	.loc 1 182 0
	sh	%d4, %d4, 11
.LVL17:
	.loc 1 179 0
	lea	%a15, [%a15] -8172
	.loc 1 182 0
	or	%d4, %d5
	.loc 1 179 0
	st.w	[%a15]0, %d6
	.loc 1 182 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d4
.L29:
	.loc 1 184 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L29
	.loc 1 185 0
	ret
.LFE241:
	.size	IfxEth_Phy_Pef7071_write_mdio_reg, .-IfxEth_Phy_Pef7071_write_mdio_reg
	.global	IfxEth_Phy_Pef7071_iPhyInitDone
.section .bss,"aw",@nobits
	.align 2
	.type	IfxEth_Phy_Pef7071_iPhyInitDone, @object
	.size	IfxEth_Phy_Pef7071_iPhyInitDone, 4
IfxEth_Phy_Pef7071_iPhyInitDone:
	.zero	4
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6dd
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x191
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1bc
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"_Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xb8
	.uaword	0x2dc
	.uleb128 0x5
	.string	"GB"
	.byte	0x3
	.byte	0xba
	.uaword	0x253
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.string	"GW"
	.byte	0x3
	.byte	0xbb
	.uaword	0x253
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.string	"CR"
	.byte	0x3
	.byte	0xbc
	.uaword	0x253
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.string	"GR"
	.byte	0x3
	.byte	0xbd
	.uaword	0x253
	.byte	0x4
	.byte	0x5
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"PA"
	.byte	0x3
	.byte	0xbe
	.uaword	0x253
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0xbf
	.uaword	0x253
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x3
	.byte	0xc0
	.uaword	0x263
	.uleb128 0x4
	.string	"_Ifx_ETH_GMII_DATA_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xc3
	.uaword	0x33b
	.uleb128 0x5
	.string	"GD"
	.byte	0x3
	.byte	0xc5
	.uaword	0x253
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0xc6
	.uaword	0x253
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_DATA_Bits"
	.byte	0x3
	.byte	0xc7
	.uaword	0x2fd
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x5f2
	.uaword	0x381
	.uleb128 0x8
	.string	"U"
	.byte	0x3
	.uahalf	0x5f5
	.uaword	0x253
	.uleb128 0x8
	.string	"I"
	.byte	0x3
	.uahalf	0x5f7
	.uaword	0x1a6
	.uleb128 0x8
	.string	"B"
	.byte	0x3
	.uahalf	0x5f9
	.uaword	0x2dc
	.byte	0
	.uleb128 0x9
	.string	"Ifx_ETH_GMII_ADDRESS"
	.byte	0x3
	.uahalf	0x5fa
	.uaword	0x359
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x5fd
	.uaword	0x3c6
	.uleb128 0x8
	.string	"U"
	.byte	0x3
	.uahalf	0x600
	.uaword	0x253
	.uleb128 0x8
	.string	"I"
	.byte	0x3
	.uahalf	0x602
	.uaword	0x1a6
	.uleb128 0x8
	.string	"B"
	.byte	0x3
	.uahalf	0x604
	.uaword	0x33b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_ETH_GMII_DATA"
	.byte	0x3
	.uahalf	0x605
	.uaword	0x39e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_read_mdio_reg"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.byte	0x1
	.uaword	0x43f
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa4
	.uaword	0x1f0
	.uleb128 0xc
	.string	"regaddr"
	.byte	0x1
	.byte	0xa4
	.uaword	0x1f0
	.uleb128 0xc
	.string	"pdata"
	.byte	0x1
	.byte	0xa4
	.uaword	0x43f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1f0
	.uleb128 0xa
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_write_mdio_reg"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.byte	0x1
	.uaword	0x498
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb0
	.uaword	0x1f0
	.uleb128 0xc
	.string	"regaddr"
	.byte	0x1
	.byte	0xb0
	.uaword	0x1f0
	.uleb128 0xc
	.string	"data"
	.byte	0x1
	.byte	0xb0
	.uaword	0x1f0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_init"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	0x1f0
	.uaword	.LFB238
	.uaword	.LFE238
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5c4
	.uleb128 0xf
	.string	"value"
	.byte	0x1
	.byte	0x7d
	.uaword	0x1f0
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	0x445
	.uaword	.LBB17
	.uaword	.LBE17
	.byte	0x1
	.byte	0x7c
	.uaword	0x500
	.uleb128 0x11
	.uaword	0x48b
	.uahalf	0x8000
	.uleb128 0x12
	.uaword	0x47c
	.byte	0
	.uleb128 0x12
	.uaword	0x471
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x3ec
	.uaword	.LBB19
	.uaword	.LBE19
	.byte	0x1
	.byte	0x81
	.uaword	0x52c
	.uleb128 0x13
	.uaword	0x431
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1224
	.sleb128 0
	.uleb128 0x12
	.uaword	0x422
	.byte	0
	.uleb128 0x12
	.uaword	0x417
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x445
	.uaword	.LBB21
	.uaword	.LBE21
	.byte	0x1
	.byte	0x85
	.uaword	0x553
	.uleb128 0x11
	.uaword	0x48b
	.uahalf	0xf702
	.uleb128 0x12
	.uaword	0x47c
	.byte	0x17
	.uleb128 0x12
	.uaword	0x471
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x445
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.byte	0x86
	.uaword	0x579
	.uleb128 0x12
	.uaword	0x48b
	.byte	0
	.uleb128 0x12
	.uaword	0x47c
	.byte	0x9
	.uleb128 0x12
	.uaword	0x471
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x445
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.byte	0x87
	.uaword	0x5a0
	.uleb128 0x11
	.uaword	0x48b
	.uahalf	0x101
	.uleb128 0x12
	.uaword	0x47c
	.byte	0x4
	.uleb128 0x12
	.uaword	0x471
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x445
	.uaword	.LBB27
	.uaword	.LBE27
	.byte	0x1
	.byte	0x88
	.uleb128 0x11
	.uaword	0x48b
	.uahalf	0x1200
	.uleb128 0x12
	.uaword	0x47c
	.byte	0
	.uleb128 0x12
	.uaword	0x471
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_link"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	0x211
	.uaword	.LFB239
	.uaword	.LFE239
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x656
	.uleb128 0xf
	.string	"linkEstablished"
	.byte	0x1
	.byte	0x97
	.uaword	0x211
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0xf
	.string	"value"
	.byte	0x1
	.byte	0x9b
	.uaword	0x1f0
	.uaword	.LLST2
	.uleb128 0x14
	.uaword	0x3ec
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0x9c
	.uleb128 0x16
	.uaword	0x431
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	0x422
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	0x417
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x3ec
	.uaword	.LFB240
	.uaword	.LFE240
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x684
	.uleb128 0x16
	.uaword	0x417
	.uaword	.LLST6
	.uleb128 0x16
	.uaword	0x422
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x431
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.uaword	0x445
	.uaword	.LFB241
	.uaword	.LFE241
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6b2
	.uleb128 0x16
	.uaword	0x471
	.uaword	.LLST8
	.uleb128 0x16
	.uaword	0x47c
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x48b
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x18
	.string	"IfxEth_Phy_Pef7071_iPhyInitDone"
	.byte	0x1
	.byte	0x69
	.uaword	0x1f0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_Phy_Pef7071_iPhyInitDone
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE239-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1560
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-.Ltext0
	.uaword	.LFE240-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13-.Ltext0
	.uaword	.LFE240-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE241-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16-.Ltext0
	.uaword	.LFE241-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_16"
.LASF1:
	.string	"layeraddr"
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
