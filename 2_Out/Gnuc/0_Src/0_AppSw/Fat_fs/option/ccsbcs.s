	.file	"ccsbcs.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	ff_convert
	.type	ff_convert, @function
ff_convert:
.LFB0:
	.file 1 "0_Src/0_AppSw/Fat_fs/option/ccsbcs.c"
	.loc 1 484 0
.LVL0:
	.loc 1 488 0
	lt.u	%d15, %d4, 128
	.loc 1 484 0
	mov	%d2, %d4
	.loc 1 488 0
	jnz	%d15, .L2
	.loc 1 495 0
	jnz	%d5, .L10
	movh.a	%a3, hi:Tbl
	mov	%d15, 0
	lea	%a3, [%a3] lo:Tbl
	lea	%a15, 127
.LVL1:
.L3:
	.loc 1 504 0
	addsc.a	%a2, %a3, %d15, 1
	extr.u	%d4, %d15, 0, 16
.LVL2:
	ld.hu	%d3, [%a2]0
	jeq	%d3, %d2, .L11
.LVL3:
	add	%d15, 1
.LVL4:
	.loc 1 502 0 discriminator 2
	loop	%a15, .L3
.LVL5:
.L7:
	.loc 1 497 0
	mov	%d2, 0
.L2:
.LVL6:
	.loc 1 512 0
	ret
.LVL7:
.L10:
	.loc 1 497 0
	ge.u	%d15, %d4, 256
	jnz	%d15, .L7
	.loc 1 497 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Tbl
	lea	%a15, [%a15] lo:Tbl
	addsc.a	%a15, %a15, %d4, 1
	ld.hu	%d2, [%a15] -256
	ret
.LVL8:
.L11:
	addi	%d2, %d4, 128
	extr.u	%d2, %d2, 0, 16
	ret
.LFE0:
	.size	ff_convert, .-ff_convert
	.align 1
	.global	ff_wtoupper
	.type	ff_wtoupper, @function
ff_wtoupper:
.LFB1:
	.loc 1 518 0 is_stmt 1
.LVL9:
	.loc 1 580 0
	eq	%d15, %d4, 97
	jnz	%d15, .L16
	movh	%d2, hi:tbl_lower.1583
	mov	%d3, 0
	addi	%d2, %d2, lo:tbl_lower.1583
	j	.L15
.LVL10:
.L20:
	.loc 1 580 0 is_stmt 0 discriminator 3
	jeq	%d15, %d4, .L13
.LVL11:
.L15:
	.loc 1 580 0 discriminator 4
	add	%d3, 1
.LVL12:
	mov.a	%a2, %d2
	sh	%d5, %d3, 1
	addsc.a	%a15, %a2, %d5, 0
	ld.hu	%d15, [%a15]0
	jnz	%d15, .L20
	mov	%d2, %d4
	ret
.LVL13:
.L16:
	mov	%d5, 0
.LVL14:
.L13:
	.loc 1 582 0 is_stmt 1
	movh.a	%a15, hi:tbl_upper.1584
	lea	%a15, [%a15] lo:tbl_upper.1584
	addsc.a	%a15, %a15, %d5, 0
	ld.hu	%d2, [%a15]0
	.loc 1 583 0
	ret
.LFE1:
	.size	ff_wtoupper, .-ff_wtoupper
.section .rodata,"a",@progbits
	.align 1
	.type	tbl_upper.1584, @object
	.size	tbl_upper.1584, 480
tbl_upper.1584:
	.short	65
	.short	66
	.short	67
	.short	68
	.short	69
	.short	70
	.short	71
	.short	72
	.short	73
	.short	74
	.short	75
	.short	76
	.short	77
	.short	78
	.short	79
	.short	80
	.short	81
	.short	82
	.short	83
	.short	84
	.short	85
	.short	86
	.short	87
	.short	88
	.short	89
	.short	90
	.short	33
	.short	-32
	.short	-31
	.short	-27
	.short	-30
	.short	-29
	.short	192
	.short	193
	.short	194
	.short	195
	.short	196
	.short	197
	.short	198
	.short	199
	.short	200
	.short	201
	.short	202
	.short	203
	.short	204
	.short	205
	.short	206
	.short	207
	.short	208
	.short	209
	.short	210
	.short	211
	.short	212
	.short	213
	.short	214
	.short	216
	.short	217
	.short	218
	.short	219
	.short	220
	.short	221
	.short	222
	.short	376
	.short	256
	.short	258
	.short	260
	.short	262
	.short	264
	.short	266
	.short	268
	.short	270
	.short	272
	.short	274
	.short	276
	.short	278
	.short	280
	.short	282
	.short	284
	.short	286
	.short	288
	.short	290
	.short	292
	.short	294
	.short	296
	.short	298
	.short	300
	.short	302
	.short	304
	.short	306
	.short	308
	.short	310
	.short	313
	.short	315
	.short	317
	.short	319
	.short	321
	.short	323
	.short	325
	.short	327
	.short	330
	.short	332
	.short	334
	.short	336
	.short	338
	.short	340
	.short	342
	.short	344
	.short	346
	.short	348
	.short	350
	.short	352
	.short	354
	.short	356
	.short	358
	.short	360
	.short	362
	.short	364
	.short	366
	.short	368
	.short	370
	.short	372
	.short	374
	.short	377
	.short	379
	.short	381
	.short	401
	.short	913
	.short	914
	.short	915
	.short	916
	.short	917
	.short	918
	.short	919
	.short	920
	.short	921
	.short	922
	.short	923
	.short	924
	.short	925
	.short	926
	.short	927
	.short	928
	.short	929
	.short	931
	.short	932
	.short	933
	.short	934
	.short	935
	.short	936
	.short	937
	.short	938
	.short	1040
	.short	1041
	.short	1042
	.short	1043
	.short	1044
	.short	1045
	.short	1046
	.short	1047
	.short	1048
	.short	1049
	.short	1050
	.short	1051
	.short	1052
	.short	1053
	.short	1054
	.short	1055
	.short	1056
	.short	1057
	.short	1058
	.short	1059
	.short	1060
	.short	1061
	.short	1062
	.short	1063
	.short	1064
	.short	1065
	.short	1066
	.short	1067
	.short	1068
	.short	1069
	.short	1070
	.short	1071
	.short	1025
	.short	1026
	.short	1027
	.short	1028
	.short	1029
	.short	1030
	.short	1031
	.short	1032
	.short	1033
	.short	1034
	.short	1035
	.short	1036
	.short	1038
	.short	1039
	.short	8544
	.short	8545
	.short	8546
	.short	8547
	.short	8548
	.short	8549
	.short	8550
	.short	8551
	.short	8552
	.short	8553
	.short	8554
	.short	8555
	.short	8556
	.short	8557
	.short	8558
	.short	8559
	.short	-223
	.short	-222
	.short	-221
	.short	-220
	.short	-219
	.short	-218
	.short	-217
	.short	-216
	.short	-215
	.short	-214
	.short	-213
	.short	-212
	.short	-211
	.short	-210
	.short	-209
	.short	-208
	.short	-207
	.short	-206
	.short	-205
	.short	-204
	.short	-203
	.short	-202
	.short	-201
	.short	-200
	.short	-199
	.short	-198
	.short	0
	.align 1
	.type	tbl_lower.1583, @object
	.size	tbl_lower.1583, 480
tbl_lower.1583:
	.short	97
	.short	98
	.short	99
	.short	100
	.short	101
	.short	102
	.short	103
	.short	104
	.short	105
	.short	106
	.short	107
	.short	108
	.short	109
	.short	110
	.short	111
	.short	112
	.short	113
	.short	114
	.short	115
	.short	116
	.short	117
	.short	118
	.short	119
	.short	120
	.short	121
	.short	122
	.short	161
	.short	162
	.short	163
	.short	165
	.short	172
	.short	175
	.short	224
	.short	225
	.short	226
	.short	227
	.short	228
	.short	229
	.short	230
	.short	231
	.short	232
	.short	233
	.short	234
	.short	235
	.short	236
	.short	237
	.short	238
	.short	239
	.short	240
	.short	241
	.short	242
	.short	243
	.short	244
	.short	245
	.short	246
	.short	248
	.short	249
	.short	250
	.short	251
	.short	252
	.short	253
	.short	254
	.short	255
	.short	257
	.short	259
	.short	261
	.short	263
	.short	265
	.short	267
	.short	269
	.short	271
	.short	273
	.short	275
	.short	277
	.short	279
	.short	281
	.short	283
	.short	285
	.short	287
	.short	289
	.short	291
	.short	293
	.short	295
	.short	297
	.short	299
	.short	301
	.short	303
	.short	305
	.short	307
	.short	309
	.short	311
	.short	314
	.short	316
	.short	318
	.short	320
	.short	322
	.short	324
	.short	326
	.short	328
	.short	331
	.short	333
	.short	335
	.short	337
	.short	339
	.short	341
	.short	343
	.short	345
	.short	347
	.short	349
	.short	351
	.short	353
	.short	355
	.short	357
	.short	359
	.short	361
	.short	363
	.short	365
	.short	367
	.short	369
	.short	371
	.short	373
	.short	375
	.short	378
	.short	380
	.short	382
	.short	402
	.short	945
	.short	946
	.short	947
	.short	948
	.short	949
	.short	950
	.short	951
	.short	952
	.short	953
	.short	954
	.short	955
	.short	956
	.short	957
	.short	958
	.short	959
	.short	960
	.short	961
	.short	963
	.short	964
	.short	965
	.short	966
	.short	967
	.short	968
	.short	969
	.short	970
	.short	1072
	.short	1073
	.short	1074
	.short	1075
	.short	1076
	.short	1077
	.short	1078
	.short	1079
	.short	1080
	.short	1081
	.short	1082
	.short	1083
	.short	1084
	.short	1085
	.short	1086
	.short	1087
	.short	1088
	.short	1089
	.short	1090
	.short	1091
	.short	1092
	.short	1093
	.short	1094
	.short	1095
	.short	1096
	.short	1097
	.short	1098
	.short	1099
	.short	1100
	.short	1101
	.short	1102
	.short	1103
	.short	1105
	.short	1106
	.short	1107
	.short	1108
	.short	1109
	.short	1110
	.short	1111
	.short	1112
	.short	1113
	.short	1114
	.short	1115
	.short	1116
	.short	1118
	.short	1119
	.short	8560
	.short	8561
	.short	8562
	.short	8563
	.short	8564
	.short	8565
	.short	8566
	.short	8567
	.short	8568
	.short	8569
	.short	8570
	.short	8571
	.short	8572
	.short	8573
	.short	8574
	.short	8575
	.short	-191
	.short	-190
	.short	-189
	.short	-188
	.short	-187
	.short	-186
	.short	-185
	.short	-184
	.short	-183
	.short	-182
	.short	-181
	.short	-180
	.short	-179
	.short	-178
	.short	-177
	.short	-176
	.short	-175
	.short	-174
	.short	-173
	.short	-172
	.short	-171
	.short	-170
	.short	-169
	.short	-168
	.short	-167
	.short	-166
	.short	0
	.align 1
	.type	Tbl, @object
	.size	Tbl, 256
Tbl:
	.short	8364
	.short	0
	.short	8218
	.short	402
	.short	8222
	.short	8230
	.short	8224
	.short	8225
	.short	710
	.short	8240
	.short	352
	.short	8249
	.short	338
	.short	0
	.short	381
	.short	0
	.short	0
	.short	8216
	.short	8217
	.short	8220
	.short	8221
	.short	8226
	.short	8211
	.short	8212
	.short	732
	.short	8482
	.short	353
	.short	8250
	.short	339
	.short	0
	.short	382
	.short	376
	.short	160
	.short	161
	.short	162
	.short	163
	.short	164
	.short	165
	.short	166
	.short	167
	.short	168
	.short	169
	.short	170
	.short	171
	.short	172
	.short	173
	.short	174
	.short	175
	.short	176
	.short	177
	.short	178
	.short	179
	.short	180
	.short	181
	.short	182
	.short	183
	.short	184
	.short	185
	.short	186
	.short	187
	.short	188
	.short	189
	.short	190
	.short	191
	.short	192
	.short	193
	.short	194
	.short	195
	.short	196
	.short	197
	.short	198
	.short	199
	.short	200
	.short	201
	.short	202
	.short	203
	.short	204
	.short	205
	.short	206
	.short	207
	.short	208
	.short	209
	.short	210
	.short	211
	.short	212
	.short	213
	.short	214
	.short	215
	.short	216
	.short	217
	.short	218
	.short	219
	.short	220
	.short	221
	.short	222
	.short	223
	.short	224
	.short	225
	.short	226
	.short	227
	.short	228
	.short	229
	.short	230
	.short	231
	.short	232
	.short	233
	.short	234
	.short	235
	.short	236
	.short	237
	.short	238
	.short	239
	.short	240
	.short	241
	.short	242
	.short	243
	.short	244
	.short	245
	.short	246
	.short	247
	.short	248
	.short	249
	.short	250
	.short	251
	.short	252
	.short	253
	.short	254
	.short	255
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/0_AppSw/Fat_fs/option/../integer.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x309
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Fat_fs/option/ccsbcs.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"UINT"
	.byte	0x2
	.byte	0x11
	.uaword	0x182
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
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
	.string	"WCHAR"
	.byte	0x2
	.byte	0x1c
	.uaword	0x1b8
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
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x1
	.string	"ff_convert"
	.byte	0x1
	.uahalf	0x1e0
	.byte	0x1
	.uaword	0x1ce
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x259
	.uleb128 0x5
	.string	"src"
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x1ce
	.uaword	.LLST0
	.uleb128 0x6
	.string	"dir"
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x176
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0x1ce
	.uaword	.LLST1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ff_wtoupper"
	.byte	0x1
	.uahalf	0x203
	.byte	0x1
	.uaword	0x1ce
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2cb
	.uleb128 0x6
	.string	"chr"
	.byte	0x1
	.uahalf	0x204
	.uaword	0x1ce
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"tbl_lower"
	.byte	0x1
	.uahalf	0x207
	.uaword	0x2db
	.byte	0x5
	.byte	0x3
	.uaword	tbl_lower.1583
	.uleb128 0x8
	.string	"tbl_upper"
	.byte	0x1
	.uahalf	0x224
	.uaword	0x2e0
	.byte	0x5
	.byte	0x3
	.uaword	tbl_upper.1584
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.uahalf	0x241
	.uaword	0x16f
	.uaword	.LLST2
	.byte	0
	.uleb128 0x9
	.uaword	0x1ce
	.uaword	0x2db
	.uleb128 0xa
	.uaword	0x1fc
	.byte	0xef
	.byte	0
	.uleb128 0xb
	.uaword	0x2cb
	.uleb128 0xb
	.uaword	0x2cb
	.uleb128 0x9
	.uaword	0x1ce
	.uaword	0x2f5
	.uleb128 0xa
	.uaword	0x1fc
	.byte	0x7f
	.byte	0
	.uleb128 0x8
	.string	"Tbl"
	.byte	0x1
	.uahalf	0x147
	.uaword	0x307
	.byte	0x5
	.byte	0x3
	.uaword	Tbl
	.uleb128 0xb
	.uaword	0x2e5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x2
	.byte	0x30
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
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
