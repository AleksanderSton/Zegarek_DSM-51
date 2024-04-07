                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Dec 21 13:24:30 2023
                              5 ;--------------------------------------------------------
                              6 	.module zegarek
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _WZOR
                             13 	.globl _main
                             14 	.globl _init_interrupts
                             15 	.globl _timer0_isr
                             16 	.globl _incTime
                             17 	.globl _CY
                             18 	.globl _AC
                             19 	.globl _F0
                             20 	.globl _RS1
                             21 	.globl _RS0
                             22 	.globl _OV
                             23 	.globl _F1
                             24 	.globl _P
                             25 	.globl _PS
                             26 	.globl _PT1
                             27 	.globl _PX1
                             28 	.globl _PT0
                             29 	.globl _PX0
                             30 	.globl _RD
                             31 	.globl _WR
                             32 	.globl _T1
                             33 	.globl _T0
                             34 	.globl _INT1
                             35 	.globl _INT0
                             36 	.globl _TXD
                             37 	.globl _RXD
                             38 	.globl _P3_7
                             39 	.globl _P3_6
                             40 	.globl _P3_5
                             41 	.globl _P3_4
                             42 	.globl _P3_3
                             43 	.globl _P3_2
                             44 	.globl _P3_1
                             45 	.globl _P3_0
                             46 	.globl _EA
                             47 	.globl _ES
                             48 	.globl _ET1
                             49 	.globl _EX1
                             50 	.globl _ET0
                             51 	.globl _EX0
                             52 	.globl _P2_7
                             53 	.globl _P2_6
                             54 	.globl _P2_5
                             55 	.globl _P2_4
                             56 	.globl _P2_3
                             57 	.globl _P2_2
                             58 	.globl _P2_1
                             59 	.globl _P2_0
                             60 	.globl _SM0
                             61 	.globl _SM1
                             62 	.globl _SM2
                             63 	.globl _REN
                             64 	.globl _TB8
                             65 	.globl _RB8
                             66 	.globl _TI
                             67 	.globl _RI
                             68 	.globl _P1_7
                             69 	.globl _P1_6
                             70 	.globl _P1_5
                             71 	.globl _P1_4
                             72 	.globl _P1_3
                             73 	.globl _P1_2
                             74 	.globl _P1_1
                             75 	.globl _P1_0
                             76 	.globl _TF1
                             77 	.globl _TR1
                             78 	.globl _TF0
                             79 	.globl _TR0
                             80 	.globl _IE1
                             81 	.globl _IT1
                             82 	.globl _IE0
                             83 	.globl _IT0
                             84 	.globl _P0_7
                             85 	.globl _P0_6
                             86 	.globl _P0_5
                             87 	.globl _P0_4
                             88 	.globl _P0_3
                             89 	.globl _P0_2
                             90 	.globl _P0_1
                             91 	.globl _P0_0
                             92 	.globl _B
                             93 	.globl _ACC
                             94 	.globl _PSW
                             95 	.globl _IP
                             96 	.globl _P3
                             97 	.globl _IE
                             98 	.globl _P2
                             99 	.globl _SBUF
                            100 	.globl _SCON
                            101 	.globl _P1
                            102 	.globl _TH1
                            103 	.globl _TH0
                            104 	.globl _TL1
                            105 	.globl _TL0
                            106 	.globl _TMOD
                            107 	.globl _TCON
                            108 	.globl _PCON
                            109 	.globl _DPH
                            110 	.globl _DPL
                            111 	.globl _SP
                            112 	.globl _P0
                            113 	.globl _edit_mode
                            114 	.globl _INTERRUPT_FLAG
                            115 	.globl _SEG_OFF
                            116 	.globl _t0_flag
                            117 	.globl _send_flag
                            118 	.globl _rec_flag
                            119 	.globl _LED
                            120 	.globl _wyswietlacze
                            121 	.globl _T0counter
                            122 	.globl _temp_p
                            123 	.globl _temp_b
                            124 	.globl _led_b
                            125 	.globl _led_p
                            126 	.globl _kbdBefore
                            127 	.globl _kbd
                            128 	.globl _led_led
                            129 	.globl _led_wyb
                            130 	.globl _inc_sec
                            131 	.globl _dec_sec
                            132 	.globl _inc_min
                            133 	.globl _dec_min
                            134 	.globl _inc_hour
                            135 	.globl _dec_hour
                            136 	.globl _keyboard
                            137 	.globl _enter_edit_mode
                            138 	.globl _refresh_display
                            139 ;--------------------------------------------------------
                            140 ; special function registers
                            141 ;--------------------------------------------------------
                            142 	.area RSEG    (DATA)
                    0080    143 _P0	=	0x0080
                    0081    144 _SP	=	0x0081
                    0082    145 _DPL	=	0x0082
                    0083    146 _DPH	=	0x0083
                    0087    147 _PCON	=	0x0087
                    0088    148 _TCON	=	0x0088
                    0089    149 _TMOD	=	0x0089
                    008A    150 _TL0	=	0x008a
                    008B    151 _TL1	=	0x008b
                    008C    152 _TH0	=	0x008c
                    008D    153 _TH1	=	0x008d
                    0090    154 _P1	=	0x0090
                    0098    155 _SCON	=	0x0098
                    0099    156 _SBUF	=	0x0099
                    00A0    157 _P2	=	0x00a0
                    00A8    158 _IE	=	0x00a8
                    00B0    159 _P3	=	0x00b0
                    00B8    160 _IP	=	0x00b8
                    00D0    161 _PSW	=	0x00d0
                    00E0    162 _ACC	=	0x00e0
                    00F0    163 _B	=	0x00f0
                            164 ;--------------------------------------------------------
                            165 ; special function bits
                            166 ;--------------------------------------------------------
                            167 	.area RSEG    (DATA)
                    0080    168 _P0_0	=	0x0080
                    0081    169 _P0_1	=	0x0081
                    0082    170 _P0_2	=	0x0082
                    0083    171 _P0_3	=	0x0083
                    0084    172 _P0_4	=	0x0084
                    0085    173 _P0_5	=	0x0085
                    0086    174 _P0_6	=	0x0086
                    0087    175 _P0_7	=	0x0087
                    0088    176 _IT0	=	0x0088
                    0089    177 _IE0	=	0x0089
                    008A    178 _IT1	=	0x008a
                    008B    179 _IE1	=	0x008b
                    008C    180 _TR0	=	0x008c
                    008D    181 _TF0	=	0x008d
                    008E    182 _TR1	=	0x008e
                    008F    183 _TF1	=	0x008f
                    0090    184 _P1_0	=	0x0090
                    0091    185 _P1_1	=	0x0091
                    0092    186 _P1_2	=	0x0092
                    0093    187 _P1_3	=	0x0093
                    0094    188 _P1_4	=	0x0094
                    0095    189 _P1_5	=	0x0095
                    0096    190 _P1_6	=	0x0096
                    0097    191 _P1_7	=	0x0097
                    0098    192 _RI	=	0x0098
                    0099    193 _TI	=	0x0099
                    009A    194 _RB8	=	0x009a
                    009B    195 _TB8	=	0x009b
                    009C    196 _REN	=	0x009c
                    009D    197 _SM2	=	0x009d
                    009E    198 _SM1	=	0x009e
                    009F    199 _SM0	=	0x009f
                    00A0    200 _P2_0	=	0x00a0
                    00A1    201 _P2_1	=	0x00a1
                    00A2    202 _P2_2	=	0x00a2
                    00A3    203 _P2_3	=	0x00a3
                    00A4    204 _P2_4	=	0x00a4
                    00A5    205 _P2_5	=	0x00a5
                    00A6    206 _P2_6	=	0x00a6
                    00A7    207 _P2_7	=	0x00a7
                    00A8    208 _EX0	=	0x00a8
                    00A9    209 _ET0	=	0x00a9
                    00AA    210 _EX1	=	0x00aa
                    00AB    211 _ET1	=	0x00ab
                    00AC    212 _ES	=	0x00ac
                    00AF    213 _EA	=	0x00af
                    00B0    214 _P3_0	=	0x00b0
                    00B1    215 _P3_1	=	0x00b1
                    00B2    216 _P3_2	=	0x00b2
                    00B3    217 _P3_3	=	0x00b3
                    00B4    218 _P3_4	=	0x00b4
                    00B5    219 _P3_5	=	0x00b5
                    00B6    220 _P3_6	=	0x00b6
                    00B7    221 _P3_7	=	0x00b7
                    00B0    222 _RXD	=	0x00b0
                    00B1    223 _TXD	=	0x00b1
                    00B2    224 _INT0	=	0x00b2
                    00B3    225 _INT1	=	0x00b3
                    00B4    226 _T0	=	0x00b4
                    00B5    227 _T1	=	0x00b5
                    00B6    228 _WR	=	0x00b6
                    00B7    229 _RD	=	0x00b7
                    00B8    230 _PX0	=	0x00b8
                    00B9    231 _PT0	=	0x00b9
                    00BA    232 _PX1	=	0x00ba
                    00BB    233 _PT1	=	0x00bb
                    00BC    234 _PS	=	0x00bc
                    00D0    235 _P	=	0x00d0
                    00D1    236 _F1	=	0x00d1
                    00D2    237 _OV	=	0x00d2
                    00D3    238 _RS0	=	0x00d3
                    00D4    239 _RS1	=	0x00d4
                    00D5    240 _F0	=	0x00d5
                    00D6    241 _AC	=	0x00d6
                    00D7    242 _CY	=	0x00d7
                            243 ;--------------------------------------------------------
                            244 ; overlayable register banks
                            245 ;--------------------------------------------------------
                            246 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     247 	.ds 8
                            248 ;--------------------------------------------------------
                            249 ; internal ram data
                            250 ;--------------------------------------------------------
                            251 	.area DSEG    (DATA)
   0008                     252 _led_wyb::
   0008                     253 	.ds 2
   000A                     254 _led_led::
   000A                     255 	.ds 2
   000C                     256 _kbd::
   000C                     257 	.ds 1
   000D                     258 _kbdBefore::
   000D                     259 	.ds 1
   000E                     260 _led_p::
   000E                     261 	.ds 1
   000F                     262 _led_b::
   000F                     263 	.ds 1
   0010                     264 _temp_b::
   0010                     265 	.ds 1
   0011                     266 _temp_p::
   0011                     267 	.ds 1
   0012                     268 _T0counter::
   0012                     269 	.ds 2
   0014                     270 _wyswietlacze::
   0014                     271 	.ds 6
                            272 ;--------------------------------------------------------
                            273 ; overlayable items in internal ram 
                            274 ;--------------------------------------------------------
                            275 	.area	OSEG    (OVR,DATA)
                            276 ;--------------------------------------------------------
                            277 ; Stack segment in internal ram 
                            278 ;--------------------------------------------------------
                            279 	.area	SSEG	(DATA)
   0021                     280 __start__stack:
   0021                     281 	.ds	1
                            282 
                            283 ;--------------------------------------------------------
                            284 ; indirectly addressable internal ram data
                            285 ;--------------------------------------------------------
                            286 	.area ISEG    (DATA)
                            287 ;--------------------------------------------------------
                            288 ; absolute internal ram data
                            289 ;--------------------------------------------------------
                            290 	.area IABS    (ABS,DATA)
                            291 	.area IABS    (ABS,DATA)
                            292 ;--------------------------------------------------------
                            293 ; bit data
                            294 ;--------------------------------------------------------
                            295 	.area BSEG    (BIT)
                    0097    296 _LED	=	0x0097
   0000                     297 _rec_flag::
   0000                     298 	.ds 1
   0001                     299 _send_flag::
   0001                     300 	.ds 1
   0002                     301 _t0_flag::
   0002                     302 	.ds 1
                    0096    303 _SEG_OFF	=	0x0096
   0003                     304 _INTERRUPT_FLAG::
   0003                     305 	.ds 1
   0004                     306 _edit_mode::
   0004                     307 	.ds 1
                            308 ;--------------------------------------------------------
                            309 ; paged external ram data
                            310 ;--------------------------------------------------------
                            311 	.area PSEG    (PAG,XDATA)
                            312 ;--------------------------------------------------------
                            313 ; external ram data
                            314 ;--------------------------------------------------------
                            315 	.area XSEG    (XDATA)
                            316 ;--------------------------------------------------------
                            317 ; absolute external ram data
                            318 ;--------------------------------------------------------
                            319 	.area XABS    (ABS,XDATA)
                            320 ;--------------------------------------------------------
                            321 ; external initialized ram data
                            322 ;--------------------------------------------------------
                            323 	.area XISEG   (XDATA)
                            324 	.area HOME    (CODE)
                            325 	.area GSINIT0 (CODE)
                            326 	.area GSINIT1 (CODE)
                            327 	.area GSINIT2 (CODE)
                            328 	.area GSINIT3 (CODE)
                            329 	.area GSINIT4 (CODE)
                            330 	.area GSINIT5 (CODE)
                            331 	.area GSINIT  (CODE)
                            332 	.area GSFINAL (CODE)
                            333 	.area CSEG    (CODE)
                            334 ;--------------------------------------------------------
                            335 ; interrupt vector 
                            336 ;--------------------------------------------------------
                            337 	.area HOME    (CODE)
   0000                     338 __interrupt_vect:
   0000 02 00 13            339 	ljmp	__sdcc_gsinit_startup
   0003 32                  340 	reti
   0004                     341 	.ds	7
   000B 02 01 1E            342 	ljmp	_timer0_isr
                            343 ;--------------------------------------------------------
                            344 ; global & static initialisations
                            345 ;--------------------------------------------------------
                            346 	.area HOME    (CODE)
                            347 	.area GSINIT  (CODE)
                            348 	.area GSFINAL (CODE)
                            349 	.area GSINIT  (CODE)
                            350 	.globl __sdcc_gsinit_startup
                            351 	.globl __sdcc_program_startup
                            352 	.globl __start__stack
                            353 	.globl __mcs51_genXINIT
                            354 	.globl __mcs51_genXRAMCLEAR
                            355 	.globl __mcs51_genRAMCLEAR
                            356 ;	zegarek.c:28: __xdata unsigned char * led_wyb = (__xdata unsigned char *) 0xFF30;
   006C 75 08 30            357 	mov	_led_wyb,#0x30
   006F 75 09 FF            358 	mov	(_led_wyb + 1),#0xFF
                            359 ;	zegarek.c:29: __xdata unsigned char * led_led = (__xdata unsigned char *) 0xFF38;
   0072 75 0A 38            360 	mov	_led_led,#0x38
   0075 75 0B FF            361 	mov	(_led_led + 1),#0xFF
                            362 ;	zegarek.c:33: int T0counter = 0;
   0078 E4                  363 	clr	a
   0079 F5 12               364 	mov	_T0counter,a
   007B F5 13               365 	mov	(_T0counter + 1),a
                            366 ;	zegarek.c:37: unsigned char wyswietlacze[6] = {0,0,0,0,0,0};
   007D 75 14 00            367 	mov	_wyswietlacze,#0x00
   0080 75 15 00            368 	mov	(_wyswietlacze + 0x0001),#0x00
   0083 75 16 00            369 	mov	(_wyswietlacze + 0x0002),#0x00
   0086 75 17 00            370 	mov	(_wyswietlacze + 0x0003),#0x00
   0089 75 18 00            371 	mov	(_wyswietlacze + 0x0004),#0x00
   008C 75 19 00            372 	mov	(_wyswietlacze + 0x0005),#0x00
                            373 ;	zegarek.c:26: __bit INTERRUPT_FLAG=FALSE;
   008F C2 03               374 	clr	_INTERRUPT_FLAG
                            375 ;	zegarek.c:27: __bit edit_mode=FALSE;
   0091 C2 04               376 	clr	_edit_mode
                            377 	.area GSFINAL (CODE)
   0093 02 00 0E            378 	ljmp	__sdcc_program_startup
                            379 ;--------------------------------------------------------
                            380 ; Home
                            381 ;--------------------------------------------------------
                            382 	.area HOME    (CODE)
                            383 	.area HOME    (CODE)
   000E                     384 __sdcc_program_startup:
   000E 12 04 1A            385 	lcall	_main
                            386 ;	return from main will lock up
   0011 80 FE               387 	sjmp .
                            388 ;--------------------------------------------------------
                            389 ; code
                            390 ;--------------------------------------------------------
                            391 	.area CSEG    (CODE)
                            392 ;------------------------------------------------------------
                            393 ;Allocation info for local variables in function 'incTime'
                            394 ;------------------------------------------------------------
                            395 ;i                         Allocated to registers r3 r4 
                            396 ;------------------------------------------------------------
                            397 ;	zegarek.c:38: void incTime(void) {
                            398 ;	-----------------------------------------
                            399 ;	 function incTime
                            400 ;	-----------------------------------------
   0096                     401 _incTime:
                    0002    402 	ar2 = 0x02
                    0003    403 	ar3 = 0x03
                    0004    404 	ar4 = 0x04
                    0005    405 	ar5 = 0x05
                    0006    406 	ar6 = 0x06
                    0007    407 	ar7 = 0x07
                    0000    408 	ar0 = 0x00
                    0001    409 	ar1 = 0x01
                            410 ;	zegarek.c:40: if(wyswietlacze[5] == 2 && wyswietlacze[4] == 3 && wyswietlacze[3] == 5 && wyswietlacze[2] == 9 && wyswietlacze[1] == 5 && wyswietlacze[0] == 9) {
   0096 AA 19               411 	mov	r2,(_wyswietlacze + 0x0005)
   0098 BA 02 35            412 	cjne	r2,#0x02,00112$
   009B 74 03               413 	mov	a,#0x03
   009D B5 18 30            414 	cjne	a,(_wyswietlacze + 0x0004),00112$
   00A0 74 05               415 	mov	a,#0x05
   00A2 B5 17 2B            416 	cjne	a,(_wyswietlacze + 0x0003),00112$
   00A5 74 09               417 	mov	a,#0x09
   00A7 B5 16 26            418 	cjne	a,(_wyswietlacze + 0x0002),00112$
   00AA 74 05               419 	mov	a,#0x05
   00AC B5 15 21            420 	cjne	a,(_wyswietlacze + 0x0001),00112$
   00AF 74 09               421 	mov	a,#0x09
   00B1 B5 14 1C            422 	cjne	a,_wyswietlacze,00112$
                            423 ;	zegarek.c:41: for(i = 0; i < 6; i++) {
   00B4 7B 00               424 	mov	r3,#0x00
   00B6 7C 00               425 	mov	r4,#0x00
   00B8                     426 00119$:
   00B8 C3                  427 	clr	c
   00B9 EB                  428 	mov	a,r3
   00BA 94 06               429 	subb	a,#0x06
   00BC EC                  430 	mov	a,r4
   00BD 64 80               431 	xrl	a,#0x80
   00BF 94 80               432 	subb	a,#0x80
   00C1 50 5A               433 	jnc	00123$
                            434 ;	zegarek.c:42: `wyswietlacze[i] = 0;
   00C3 EB                  435 	mov	a,r3
   00C4 24 14               436 	add	a,#_wyswietlacze
   00C6 F8                  437 	mov	r0,a
   00C7 76 00               438 	mov	@r0,#0x00
                            439 ;	zegarek.c:41: for(i = 0; i < 6; i++) {
   00C9 0B                  440 	inc	r3
   00CA BB 00 EB            441 	cjne	r3,#0x00,00119$
   00CD 0C                  442 	inc	r4
   00CE 80 E8               443 	sjmp	00119$
   00D0                     444 00112$:
                            445 ;	zegarek.c:46: wyswietlacze[0]++;
   00D0 AB 14               446 	mov	r3,_wyswietlacze
   00D2 0B                  447 	inc	r3
   00D3 8B 14               448 	mov	_wyswietlacze,r3
                            449 ;	zegarek.c:47: if(wyswietlacze[0] >= 10) {
   00D5 BB 0A 00            450 	cjne	r3,#0x0A,00152$
   00D8                     451 00152$:
   00D8 40 09               452 	jc	00102$
                            453 ;	zegarek.c:48: wyswietlacze[0] = 0;
   00DA 75 14 00            454 	mov	_wyswietlacze,#0x00
                            455 ;	zegarek.c:49: wyswietlacze[1]++;
   00DD E5 15               456 	mov	a,(_wyswietlacze + 0x0001)
   00DF FB                  457 	mov	r3,a
   00E0 04                  458 	inc	a
   00E1 F5 15               459 	mov	(_wyswietlacze + 0x0001),a
   00E3                     460 00102$:
                            461 ;	zegarek.c:51: if(wyswietlacze[1] >= 6) {
   00E3 74 FA               462 	mov	a,#0x100 - 0x06
   00E5 25 15               463 	add	a,(_wyswietlacze + 0x0001)
   00E7 50 09               464 	jnc	00104$
                            465 ;	zegarek.c:52: wyswietlacze[2]++;
   00E9 E5 16               466 	mov	a,(_wyswietlacze + 0x0002)
   00EB FB                  467 	mov	r3,a
   00EC 04                  468 	inc	a
   00ED F5 16               469 	mov	(_wyswietlacze + 0x0002),a
                            470 ;	zegarek.c:53: wyswietlacze[1] = 0;
   00EF 75 15 00            471 	mov	(_wyswietlacze + 0x0001),#0x00
   00F2                     472 00104$:
                            473 ;	zegarek.c:55: if(wyswietlacze[2] >= 10) {
   00F2 74 F6               474 	mov	a,#0x100 - 0x0A
   00F4 25 16               475 	add	a,(_wyswietlacze + 0x0002)
   00F6 50 09               476 	jnc	00106$
                            477 ;	zegarek.c:56: wyswietlacze[2] = 0;
   00F8 75 16 00            478 	mov	(_wyswietlacze + 0x0002),#0x00
                            479 ;	zegarek.c:57: wyswietlacze[3]++;
   00FB E5 17               480 	mov	a,(_wyswietlacze + 0x0003)
   00FD FB                  481 	mov	r3,a
   00FE 04                  482 	inc	a
   00FF F5 17               483 	mov	(_wyswietlacze + 0x0003),a
   0101                     484 00106$:
                            485 ;	zegarek.c:59: if(wyswietlacze[3] >= 6) {
   0101 74 FA               486 	mov	a,#0x100 - 0x06
   0103 25 17               487 	add	a,(_wyswietlacze + 0x0003)
   0105 50 09               488 	jnc	00108$
                            489 ;	zegarek.c:60: wyswietlacze[3] = 0;
   0107 75 17 00            490 	mov	(_wyswietlacze + 0x0003),#0x00
                            491 ;	zegarek.c:61: wyswietlacze[4]++;
   010A E5 18               492 	mov	a,(_wyswietlacze + 0x0004)
   010C FB                  493 	mov	r3,a
   010D 04                  494 	inc	a
   010E F5 18               495 	mov	(_wyswietlacze + 0x0004),a
   0110                     496 00108$:
                            497 ;	zegarek.c:63: if(wyswietlacze[4] >= 10) {
   0110 74 F6               498 	mov	a,#0x100 - 0x0A
   0112 25 18               499 	add	a,(_wyswietlacze + 0x0004)
   0114 50 07               500 	jnc	00123$
                            501 ;	zegarek.c:64: wyswietlacze[4] = 0;
   0116 75 18 00            502 	mov	(_wyswietlacze + 0x0004),#0x00
                            503 ;	zegarek.c:65: wyswietlacze[5]++;
   0119 EA                  504 	mov	a,r2
   011A 04                  505 	inc	a
   011B F5 19               506 	mov	(_wyswietlacze + 0x0005),a
   011D                     507 00123$:
   011D 22                  508 	ret
                            509 ;------------------------------------------------------------
                            510 ;Allocation info for local variables in function 'timer0_isr'
                            511 ;------------------------------------------------------------
                            512 ;------------------------------------------------------------
                            513 ;	zegarek.c:69: void timer0_isr(void) __interrupt(1) {
                            514 ;	-----------------------------------------
                            515 ;	 function timer0_isr
                            516 ;	-----------------------------------------
   011E                     517 _timer0_isr:
                            518 ;	zegarek.c:70: TH0 = TH_0;
   011E 75 8C FC            519 	mov	_TH0,#0xFC
                            520 ;	zegarek.c:71: TL0 = TL_0;
   0121 75 8A 66            521 	mov	_TL0,#0x66
                            522 ;	zegarek.c:72: INTERRUPT_FLAG = TRUE;
   0124 D2 03               523 	setb	_INTERRUPT_FLAG
   0126 32                  524 	reti
                            525 ;	eliminated unneeded push/pop psw
                            526 ;	eliminated unneeded push/pop dpl
                            527 ;	eliminated unneeded push/pop dph
                            528 ;	eliminated unneeded push/pop b
                            529 ;	eliminated unneeded push/pop acc
                            530 ;------------------------------------------------------------
                            531 ;Allocation info for local variables in function 'init_interrupts'
                            532 ;------------------------------------------------------------
                            533 ;------------------------------------------------------------
                            534 ;	zegarek.c:74: void init_interrupts(void) {
                            535 ;	-----------------------------------------
                            536 ;	 function init_interrupts
                            537 ;	-----------------------------------------
   0127                     538 _init_interrupts:
                            539 ;	zegarek.c:75: EA = TRUE;
   0127 D2 AF               540 	setb	_EA
                            541 ;	zegarek.c:76: ET0 = TRUE;
   0129 D2 A9               542 	setb	_ET0
                            543 ;	zegarek.c:77: TMOD = 0b00000001;
   012B 75 89 01            544 	mov	_TMOD,#0x01
                            545 ;	zegarek.c:78: TH0 = TH_0;
   012E 75 8C FC            546 	mov	_TH0,#0xFC
                            547 ;	zegarek.c:79: TL0 = TL_0;
   0131 75 8A 66            548 	mov	_TL0,#0x66
                            549 ;	zegarek.c:80: TR0 = TRUE;
   0134 D2 8C               550 	setb	_TR0
   0136 22                  551 	ret
                            552 ;------------------------------------------------------------
                            553 ;Allocation info for local variables in function 'inc_sec'
                            554 ;------------------------------------------------------------
                            555 ;------------------------------------------------------------
                            556 ;	zegarek.c:82: void inc_sec(void) {
                            557 ;	-----------------------------------------
                            558 ;	 function inc_sec
                            559 ;	-----------------------------------------
   0137                     560 _inc_sec:
                            561 ;	zegarek.c:83: wyswietlacze[0]++;
   0137 AA 14               562 	mov	r2,_wyswietlacze
   0139 0A                  563 	inc	r2
   013A 8A 14               564 	mov	_wyswietlacze,r2
                            565 ;	zegarek.c:84: if(wyswietlacze[0] == 20) {
   013C BA 14 41            566 	cjne	r2,#0x14,00105$
                            567 ;	zegarek.c:85: wyswietlacze[0] = 10;
   013F 75 14 0A            568 	mov	_wyswietlacze,#0x0A
                            569 ;	zegarek.c:86: wyswietlacze[1]++;
   0142 AA 15               570 	mov	r2,(_wyswietlacze + 0x0001)
   0144 0A                  571 	inc	r2
   0145 8A 15               572 	mov	(_wyswietlacze + 0x0001),r2
                            573 ;	zegarek.c:87: if((wyswietlacze[1]-10)*10 + (wyswietlacze[0]-10) >= 60) {
   0147 7B 00               574 	mov	r3,#0x00
   0149 EA                  575 	mov	a,r2
   014A 24 F6               576 	add	a,#0xf6
   014C F5 1A               577 	mov	__mulint_PARM_2,a
   014E EB                  578 	mov	a,r3
   014F 34 FF               579 	addc	a,#0xff
   0151 F5 1B               580 	mov	(__mulint_PARM_2 + 1),a
   0153 90 00 0A            581 	mov	dptr,#0x000A
   0156 12 04 7A            582 	lcall	__mulint
   0159 AA 82               583 	mov	r2,dpl
   015B AB 83               584 	mov	r3,dph
   015D AC 14               585 	mov	r4,_wyswietlacze
   015F 7D 00               586 	mov	r5,#0x00
   0161 EC                  587 	mov	a,r4
   0162 24 F6               588 	add	a,#0xf6
   0164 FC                  589 	mov	r4,a
   0165 ED                  590 	mov	a,r5
   0166 34 FF               591 	addc	a,#0xff
   0168 FD                  592 	mov	r5,a
   0169 EC                  593 	mov	a,r4
   016A 2A                  594 	add	a,r2
   016B FA                  595 	mov	r2,a
   016C ED                  596 	mov	a,r5
   016D 3B                  597 	addc	a,r3
   016E FB                  598 	mov	r3,a
   016F C3                  599 	clr	c
   0170 EA                  600 	mov	a,r2
   0171 94 3C               601 	subb	a,#0x3C
   0173 EB                  602 	mov	a,r3
   0174 64 80               603 	xrl	a,#0x80
   0176 94 80               604 	subb	a,#0x80
   0178 40 06               605 	jc	00105$
                            606 ;	zegarek.c:88: wyswietlacze[0] = 10;
   017A 75 14 0A            607 	mov	_wyswietlacze,#0x0A
                            608 ;	zegarek.c:89: wyswietlacze[1] = 10;
   017D 75 15 0A            609 	mov	(_wyswietlacze + 0x0001),#0x0A
   0180                     610 00105$:
   0180 22                  611 	ret
                            612 ;------------------------------------------------------------
                            613 ;Allocation info for local variables in function 'dec_sec'
                            614 ;------------------------------------------------------------
                            615 ;------------------------------------------------------------
                            616 ;	zegarek.c:93: void dec_sec(void) {
                            617 ;	-----------------------------------------
                            618 ;	 function dec_sec
                            619 ;	-----------------------------------------
   0181                     620 _dec_sec:
                            621 ;	zegarek.c:94: if(wyswietlacze[0] == 10) {
   0181 AA 14               622 	mov	r2,_wyswietlacze
   0183 BA 0A 11            623 	cjne	r2,#0x0A,00105$
                            624 ;	zegarek.c:95: wyswietlacze[0] = 19;
   0186 75 14 13            625 	mov	_wyswietlacze,#0x13
                            626 ;	zegarek.c:96: if(wyswietlacze[1] == 10) {
   0189 AB 15               627 	mov	r3,(_wyswietlacze + 0x0001)
   018B BB 0A 04            628 	cjne	r3,#0x0A,00102$
                            629 ;	zegarek.c:97: wyswietlacze[1] = 15;
   018E 75 15 0F            630 	mov	(_wyswietlacze + 0x0001),#0x0F
   0191 22                  631 	ret
   0192                     632 00102$:
                            633 ;	zegarek.c:100: wyswietlacze[1]--;
   0192 EB                  634 	mov	a,r3
   0193 14                  635 	dec	a
   0194 F5 15               636 	mov	(_wyswietlacze + 0x0001),a
   0196 22                  637 	ret
   0197                     638 00105$:
                            639 ;	zegarek.c:104: wyswietlacze[0]--;
   0197 EA                  640 	mov	a,r2
   0198 14                  641 	dec	a
   0199 F5 14               642 	mov	_wyswietlacze,a
   019B 22                  643 	ret
                            644 ;------------------------------------------------------------
                            645 ;Allocation info for local variables in function 'inc_min'
                            646 ;------------------------------------------------------------
                            647 ;------------------------------------------------------------
                            648 ;	zegarek.c:107: void inc_min(void) {
                            649 ;	-----------------------------------------
                            650 ;	 function inc_min
                            651 ;	-----------------------------------------
   019C                     652 _inc_min:
                            653 ;	zegarek.c:108: wyswietlacze[2]++;
   019C AA 16               654 	mov	r2,(_wyswietlacze + 0x0002)
   019E 0A                  655 	inc	r2
   019F 8A 16               656 	mov	(_wyswietlacze + 0x0002),r2
                            657 ;	zegarek.c:109: if(wyswietlacze[2] == 20) {
   01A1 BA 14 41            658 	cjne	r2,#0x14,00105$
                            659 ;	zegarek.c:110: wyswietlacze[2] = 10;
   01A4 75 16 0A            660 	mov	(_wyswietlacze + 0x0002),#0x0A
                            661 ;	zegarek.c:111: wyswietlacze[3]++;
   01A7 AA 17               662 	mov	r2,(_wyswietlacze + 0x0003)
   01A9 0A                  663 	inc	r2
   01AA 8A 17               664 	mov	(_wyswietlacze + 0x0003),r2
                            665 ;	zegarek.c:112: if((wyswietlacze[3]-10)*10 + (wyswietlacze[2]-10) >= 60) {
   01AC 7B 00               666 	mov	r3,#0x00
   01AE EA                  667 	mov	a,r2
   01AF 24 F6               668 	add	a,#0xf6
   01B1 F5 1A               669 	mov	__mulint_PARM_2,a
   01B3 EB                  670 	mov	a,r3
   01B4 34 FF               671 	addc	a,#0xff
   01B6 F5 1B               672 	mov	(__mulint_PARM_2 + 1),a
   01B8 90 00 0A            673 	mov	dptr,#0x000A
   01BB 12 04 7A            674 	lcall	__mulint
   01BE AA 82               675 	mov	r2,dpl
   01C0 AB 83               676 	mov	r3,dph
   01C2 AC 16               677 	mov	r4,(_wyswietlacze + 0x0002)
   01C4 7D 00               678 	mov	r5,#0x00
   01C6 EC                  679 	mov	a,r4
   01C7 24 F6               680 	add	a,#0xf6
   01C9 FC                  681 	mov	r4,a
   01CA ED                  682 	mov	a,r5
   01CB 34 FF               683 	addc	a,#0xff
   01CD FD                  684 	mov	r5,a
   01CE EC                  685 	mov	a,r4
   01CF 2A                  686 	add	a,r2
   01D0 FA                  687 	mov	r2,a
   01D1 ED                  688 	mov	a,r5
   01D2 3B                  689 	addc	a,r3
   01D3 FB                  690 	mov	r3,a
   01D4 C3                  691 	clr	c
   01D5 EA                  692 	mov	a,r2
   01D6 94 3C               693 	subb	a,#0x3C
   01D8 EB                  694 	mov	a,r3
   01D9 64 80               695 	xrl	a,#0x80
   01DB 94 80               696 	subb	a,#0x80
   01DD 40 06               697 	jc	00105$
                            698 ;	zegarek.c:113: wyswietlacze[2] = 10;
   01DF 75 16 0A            699 	mov	(_wyswietlacze + 0x0002),#0x0A
                            700 ;	zegarek.c:114: wyswietlacze[3] = 10;
   01E2 75 17 0A            701 	mov	(_wyswietlacze + 0x0003),#0x0A
   01E5                     702 00105$:
   01E5 22                  703 	ret
                            704 ;------------------------------------------------------------
                            705 ;Allocation info for local variables in function 'dec_min'
                            706 ;------------------------------------------------------------
                            707 ;------------------------------------------------------------
                            708 ;	zegarek.c:118: void dec_min(void) {
                            709 ;	-----------------------------------------
                            710 ;	 function dec_min
                            711 ;	-----------------------------------------
   01E6                     712 _dec_min:
                            713 ;	zegarek.c:119: if(wyswietlacze[2] == 10) {
   01E6 AA 16               714 	mov	r2,(_wyswietlacze + 0x0002)
   01E8 BA 0A 11            715 	cjne	r2,#0x0A,00105$
                            716 ;	zegarek.c:120: wyswietlacze[2] = 19;
   01EB 75 16 13            717 	mov	(_wyswietlacze + 0x0002),#0x13
                            718 ;	zegarek.c:121: if(wyswietlacze[3] == 10) {
   01EE AB 17               719 	mov	r3,(_wyswietlacze + 0x0003)
   01F0 BB 0A 04            720 	cjne	r3,#0x0A,00102$
                            721 ;	zegarek.c:122: wyswietlacze[3] = 15;
   01F3 75 17 0F            722 	mov	(_wyswietlacze + 0x0003),#0x0F
   01F6 22                  723 	ret
   01F7                     724 00102$:
                            725 ;	zegarek.c:125: wyswietlacze[3]--;
   01F7 EB                  726 	mov	a,r3
   01F8 14                  727 	dec	a
   01F9 F5 17               728 	mov	(_wyswietlacze + 0x0003),a
   01FB 22                  729 	ret
   01FC                     730 00105$:
                            731 ;	zegarek.c:129: wyswietlacze[2]--;
   01FC EA                  732 	mov	a,r2
   01FD 14                  733 	dec	a
   01FE F5 16               734 	mov	(_wyswietlacze + 0x0002),a
   0200 22                  735 	ret
                            736 ;------------------------------------------------------------
                            737 ;Allocation info for local variables in function 'inc_hour'
                            738 ;------------------------------------------------------------
                            739 ;------------------------------------------------------------
                            740 ;	zegarek.c:132: void inc_hour(void) {
                            741 ;	-----------------------------------------
                            742 ;	 function inc_hour
                            743 ;	-----------------------------------------
   0201                     744 _inc_hour:
                            745 ;	zegarek.c:133: wyswietlacze[4]++;
   0201 AA 18               746 	mov	r2,(_wyswietlacze + 0x0004)
   0203 0A                  747 	inc	r2
   0204 8A 18               748 	mov	(_wyswietlacze + 0x0004),r2
                            749 ;	zegarek.c:134: if(wyswietlacze[4] == 20) {
   0206 BA 14 09            750 	cjne	r2,#0x14,00102$
                            751 ;	zegarek.c:135: wyswietlacze[4] = 10;
   0209 75 18 0A            752 	mov	(_wyswietlacze + 0x0004),#0x0A
                            753 ;	zegarek.c:136: wyswietlacze[5]++;
   020C E5 19               754 	mov	a,(_wyswietlacze + 0x0005)
   020E FA                  755 	mov	r2,a
   020F 04                  756 	inc	a
   0210 F5 19               757 	mov	(_wyswietlacze + 0x0005),a
   0212                     758 00102$:
                            759 ;	zegarek.c:139: if((wyswietlacze[5]-10)*10 + (wyswietlacze[4]-10) >= 24) {
   0212 AA 19               760 	mov	r2,(_wyswietlacze + 0x0005)
   0214 7B 00               761 	mov	r3,#0x00
   0216 EA                  762 	mov	a,r2
   0217 24 F6               763 	add	a,#0xf6
   0219 F5 1A               764 	mov	__mulint_PARM_2,a
   021B EB                  765 	mov	a,r3
   021C 34 FF               766 	addc	a,#0xff
   021E F5 1B               767 	mov	(__mulint_PARM_2 + 1),a
   0220 90 00 0A            768 	mov	dptr,#0x000A
   0223 12 04 7A            769 	lcall	__mulint
   0226 AA 82               770 	mov	r2,dpl
   0228 AB 83               771 	mov	r3,dph
   022A AC 18               772 	mov	r4,(_wyswietlacze + 0x0004)
   022C 7D 00               773 	mov	r5,#0x00
   022E EC                  774 	mov	a,r4
   022F 24 F6               775 	add	a,#0xf6
   0231 FC                  776 	mov	r4,a
   0232 ED                  777 	mov	a,r5
   0233 34 FF               778 	addc	a,#0xff
   0235 FD                  779 	mov	r5,a
   0236 EC                  780 	mov	a,r4
   0237 2A                  781 	add	a,r2
   0238 FA                  782 	mov	r2,a
   0239 ED                  783 	mov	a,r5
   023A 3B                  784 	addc	a,r3
   023B FB                  785 	mov	r3,a
   023C C3                  786 	clr	c
   023D EA                  787 	mov	a,r2
   023E 94 18               788 	subb	a,#0x18
   0240 EB                  789 	mov	a,r3
   0241 64 80               790 	xrl	a,#0x80
   0243 94 80               791 	subb	a,#0x80
   0245 40 06               792 	jc	00105$
                            793 ;	zegarek.c:140: wyswietlacze[4] = 10;
   0247 75 18 0A            794 	mov	(_wyswietlacze + 0x0004),#0x0A
                            795 ;	zegarek.c:141: wyswietlacze[5] = 10;
   024A 75 19 0A            796 	mov	(_wyswietlacze + 0x0005),#0x0A
   024D                     797 00105$:
   024D 22                  798 	ret
                            799 ;------------------------------------------------------------
                            800 ;Allocation info for local variables in function 'dec_hour'
                            801 ;------------------------------------------------------------
                            802 ;------------------------------------------------------------
                            803 ;	zegarek.c:145: void dec_hour(void) {
                            804 ;	-----------------------------------------
                            805 ;	 function dec_hour
                            806 ;	-----------------------------------------
   024E                     807 _dec_hour:
                            808 ;	zegarek.c:146: if(wyswietlacze[4] == 10) {
   024E AA 18               809 	mov	r2,(_wyswietlacze + 0x0004)
   0250 BA 0A 14            810 	cjne	r2,#0x0A,00105$
                            811 ;	zegarek.c:147: wyswietlacze[4] = 19;
   0253 75 18 13            812 	mov	(_wyswietlacze + 0x0004),#0x13
                            813 ;	zegarek.c:148: if(wyswietlacze[5] == 10) {
   0256 AB 19               814 	mov	r3,(_wyswietlacze + 0x0005)
   0258 BB 0A 07            815 	cjne	r3,#0x0A,00102$
                            816 ;	zegarek.c:149: wyswietlacze[5] = 12;
   025B 75 19 0C            817 	mov	(_wyswietlacze + 0x0005),#0x0C
                            818 ;	zegarek.c:150: wyswietlacze[4] = 13;
   025E 75 18 0D            819 	mov	(_wyswietlacze + 0x0004),#0x0D
   0261 22                  820 	ret
   0262                     821 00102$:
                            822 ;	zegarek.c:153: wyswietlacze[5]--;
   0262 EB                  823 	mov	a,r3
   0263 14                  824 	dec	a
   0264 F5 19               825 	mov	(_wyswietlacze + 0x0005),a
   0266 22                  826 	ret
   0267                     827 00105$:
                            828 ;	zegarek.c:157: wyswietlacze[4]--;
   0267 EA                  829 	mov	a,r2
   0268 14                  830 	dec	a
   0269 F5 18               831 	mov	(_wyswietlacze + 0x0004),a
   026B 22                  832 	ret
                            833 ;------------------------------------------------------------
                            834 ;Allocation info for local variables in function 'keyboard'
                            835 ;------------------------------------------------------------
                            836 ;------------------------------------------------------------
                            837 ;	zegarek.c:160: void keyboard(void) {
                            838 ;	-----------------------------------------
                            839 ;	 function keyboard
                            840 ;	-----------------------------------------
   026C                     841 _keyboard:
                            842 ;	zegarek.c:161: kbd = kbdBefore;
   026C 85 0D 0C            843 	mov	_kbd,_kbdBefore
                            844 ;	zegarek.c:162: if(kbd == 0b00000001) { //enter
   026F 74 01               845 	mov	a,#0x01
   0271 B5 0C 52            846 	cjne	a,_kbd,00115$
                            847 ;	zegarek.c:163: if(edit_mode == 1) {
                            848 ;	zegarek.c:164: edit_mode = 0;
   0274 10 04 02            849 	jbc	_edit_mode,00181$
   0277 80 3B               850 	sjmp	00112$
   0279                     851 00181$:
                            852 ;	zegarek.c:165: if(temp_p == 0) {
   0279 E5 11               853 	mov	a,_temp_p
   027B 70 0E               854 	jnz	00107$
                            855 ;	zegarek.c:166: wyswietlacze[0] -= 10;
   027D E5 14               856 	mov	a,_wyswietlacze
   027F 24 F6               857 	add	a,#0xf6
   0281 F5 14               858 	mov	_wyswietlacze,a
                            859 ;	zegarek.c:167: wyswietlacze[1] -= 10;
   0283 E5 15               860 	mov	a,(_wyswietlacze + 0x0001)
   0285 24 F6               861 	add	a,#0xf6
   0287 F5 15               862 	mov	(_wyswietlacze + 0x0001),a
   0289 80 24               863 	sjmp	00108$
   028B                     864 00107$:
                            865 ;	zegarek.c:169: else if(temp_p == 1) {
   028B 74 01               866 	mov	a,#0x01
   028D B5 11 0E            867 	cjne	a,_temp_p,00104$
                            868 ;	zegarek.c:170: wyswietlacze[2] -= 10;
   0290 E5 16               869 	mov	a,(_wyswietlacze + 0x0002)
   0292 24 F6               870 	add	a,#0xf6
   0294 F5 16               871 	mov	(_wyswietlacze + 0x0002),a
                            872 ;	zegarek.c:171: wyswietlacze[3] -= 10;
   0296 E5 17               873 	mov	a,(_wyswietlacze + 0x0003)
   0298 24 F6               874 	add	a,#0xf6
   029A F5 17               875 	mov	(_wyswietlacze + 0x0003),a
   029C 80 11               876 	sjmp	00108$
   029E                     877 00104$:
                            878 ;	zegarek.c:173: else if(temp_p == 2) {
   029E 74 02               879 	mov	a,#0x02
   02A0 B5 11 0C            880 	cjne	a,_temp_p,00108$
                            881 ;	zegarek.c:174: wyswietlacze[4] -= 10;
   02A3 E5 18               882 	mov	a,(_wyswietlacze + 0x0004)
   02A5 24 F6               883 	add	a,#0xf6
   02A7 F5 18               884 	mov	(_wyswietlacze + 0x0004),a
                            885 ;	zegarek.c:175: wyswietlacze[5] -= 10;
   02A9 E5 19               886 	mov	a,(_wyswietlacze + 0x0005)
   02AB 24 F6               887 	add	a,#0xf6
   02AD F5 19               888 	mov	(_wyswietlacze + 0x0005),a
   02AF                     889 00108$:
                            890 ;	zegarek.c:177: temp_p = 0;
   02AF 75 11 00            891 	mov	_temp_p,#0x00
   02B2 80 12               892 	sjmp	00115$
   02B4                     893 00112$:
                            894 ;	zegarek.c:179: else if(!edit_mode) {
   02B4 20 04 0F            895 	jb	_edit_mode,00115$
                            896 ;	zegarek.c:180: enter_edit_mode();
   02B7 12 03 D0            897 	lcall	_enter_edit_mode
                            898 ;	zegarek.c:181: wyswietlacze[0] += 10;
   02BA 74 0A               899 	mov	a,#0x0A
   02BC 25 14               900 	add	a,_wyswietlacze
   02BE F5 14               901 	mov	_wyswietlacze,a
                            902 ;	zegarek.c:182: wyswietlacze[1] += 10;
   02C0 74 0A               903 	mov	a,#0x0A
   02C2 25 15               904 	add	a,(_wyswietlacze + 0x0001)
   02C4 F5 15               905 	mov	(_wyswietlacze + 0x0001),a
   02C6                     906 00115$:
                            907 ;	zegarek.c:186: if(edit_mode) {
   02C6 20 04 01            908 	jb	_edit_mode,00188$
   02C9 22                  909 	ret
   02CA                     910 00188$:
                            911 ;	zegarek.c:187: if(kbd == 0b00000100) { //strza³ka w prawo
   02CA 74 04               912 	mov	a,#0x04
   02CC B5 0C 5E            913 	cjne	a,_kbd,00123$
                            914 ;	zegarek.c:188: if(temp_p == 0) {
   02CF E5 11               915 	mov	a,_temp_p
   02D1 70 1D               916 	jnz	00120$
                            917 ;	zegarek.c:189: temp_p = 2;
   02D3 75 11 02            918 	mov	_temp_p,#0x02
                            919 ;	zegarek.c:190: wyswietlacze[0] -= 10;
   02D6 E5 14               920 	mov	a,_wyswietlacze
   02D8 24 F6               921 	add	a,#0xf6
   02DA F5 14               922 	mov	_wyswietlacze,a
                            923 ;	zegarek.c:191: wyswietlacze[1] -= 10;
   02DC E5 15               924 	mov	a,(_wyswietlacze + 0x0001)
   02DE 24 F6               925 	add	a,#0xf6
   02E0 F5 15               926 	mov	(_wyswietlacze + 0x0001),a
                            927 ;	zegarek.c:192: wyswietlacze[4] += 10;
   02E2 74 0A               928 	mov	a,#0x0A
   02E4 25 18               929 	add	a,(_wyswietlacze + 0x0004)
   02E6 F5 18               930 	mov	(_wyswietlacze + 0x0004),a
                            931 ;	zegarek.c:193: wyswietlacze[5] += 10;
   02E8 74 0A               932 	mov	a,#0x0A
   02EA 25 19               933 	add	a,(_wyswietlacze + 0x0005)
   02EC F5 19               934 	mov	(_wyswietlacze + 0x0005),a
   02EE 80 3D               935 	sjmp	00123$
   02F0                     936 00120$:
                            937 ;	zegarek.c:195: else if(temp_p == 1) {
   02F0 74 01               938 	mov	a,#0x01
   02F2 B5 11 1D            939 	cjne	a,_temp_p,00117$
                            940 ;	zegarek.c:196: temp_p = 0;
   02F5 75 11 00            941 	mov	_temp_p,#0x00
                            942 ;	zegarek.c:197: wyswietlacze[2] -= 10;
   02F8 E5 16               943 	mov	a,(_wyswietlacze + 0x0002)
   02FA 24 F6               944 	add	a,#0xf6
   02FC F5 16               945 	mov	(_wyswietlacze + 0x0002),a
                            946 ;	zegarek.c:198: wyswietlacze[3] -= 10;
   02FE E5 17               947 	mov	a,(_wyswietlacze + 0x0003)
   0300 24 F6               948 	add	a,#0xf6
   0302 F5 17               949 	mov	(_wyswietlacze + 0x0003),a
                            950 ;	zegarek.c:199: wyswietlacze[0] += 10;
   0304 74 0A               951 	mov	a,#0x0A
   0306 25 14               952 	add	a,_wyswietlacze
   0308 F5 14               953 	mov	_wyswietlacze,a
                            954 ;	zegarek.c:200: wyswietlacze[1] += 10;
   030A 74 0A               955 	mov	a,#0x0A
   030C 25 15               956 	add	a,(_wyswietlacze + 0x0001)
   030E F5 15               957 	mov	(_wyswietlacze + 0x0001),a
   0310 80 1B               958 	sjmp	00123$
   0312                     959 00117$:
                            960 ;	zegarek.c:203: temp_p = 1;
   0312 75 11 01            961 	mov	_temp_p,#0x01
                            962 ;	zegarek.c:204: wyswietlacze[4] -= 10;
   0315 E5 18               963 	mov	a,(_wyswietlacze + 0x0004)
   0317 24 F6               964 	add	a,#0xf6
   0319 F5 18               965 	mov	(_wyswietlacze + 0x0004),a
                            966 ;	zegarek.c:205: wyswietlacze[5] -= 10;
   031B E5 19               967 	mov	a,(_wyswietlacze + 0x0005)
   031D 24 F6               968 	add	a,#0xf6
   031F F5 19               969 	mov	(_wyswietlacze + 0x0005),a
                            970 ;	zegarek.c:206: wyswietlacze[2] += 10;
   0321 74 0A               971 	mov	a,#0x0A
   0323 25 16               972 	add	a,(_wyswietlacze + 0x0002)
   0325 F5 16               973 	mov	(_wyswietlacze + 0x0002),a
                            974 ;	zegarek.c:207: wyswietlacze[3] += 10;
   0327 74 0A               975 	mov	a,#0x0A
   0329 25 17               976 	add	a,(_wyswietlacze + 0x0003)
   032B F5 17               977 	mov	(_wyswietlacze + 0x0003),a
   032D                     978 00123$:
                            979 ;	zegarek.c:210: if(kbd == 0b00100000) { //strza³ka w lewo
   032D 74 20               980 	mov	a,#0x20
   032F B5 0C 5F            981 	cjne	a,_kbd,00131$
                            982 ;	zegarek.c:211: if(temp_p == 2) {
   0332 74 02               983 	mov	a,#0x02
   0334 B5 11 1D            984 	cjne	a,_temp_p,00128$
                            985 ;	zegarek.c:212: temp_p = 0;
   0337 75 11 00            986 	mov	_temp_p,#0x00
                            987 ;	zegarek.c:213: wyswietlacze[5] -= 10;
   033A E5 19               988 	mov	a,(_wyswietlacze + 0x0005)
   033C 24 F6               989 	add	a,#0xf6
   033E F5 19               990 	mov	(_wyswietlacze + 0x0005),a
                            991 ;	zegarek.c:214: wyswietlacze[4] -= 10;
   0340 E5 18               992 	mov	a,(_wyswietlacze + 0x0004)
   0342 24 F6               993 	add	a,#0xf6
   0344 F5 18               994 	mov	(_wyswietlacze + 0x0004),a
                            995 ;	zegarek.c:215: wyswietlacze[0] += 10;
   0346 74 0A               996 	mov	a,#0x0A
   0348 25 14               997 	add	a,_wyswietlacze
   034A F5 14               998 	mov	_wyswietlacze,a
                            999 ;	zegarek.c:216: wyswietlacze[1] += 10;
   034C 74 0A              1000 	mov	a,#0x0A
   034E 25 15              1001 	add	a,(_wyswietlacze + 0x0001)
   0350 F5 15              1002 	mov	(_wyswietlacze + 0x0001),a
   0352 80 3D              1003 	sjmp	00131$
   0354                    1004 00128$:
                           1005 ;	zegarek.c:218: else if(temp_p == 1) {
   0354 74 01              1006 	mov	a,#0x01
   0356 B5 11 1D           1007 	cjne	a,_temp_p,00125$
                           1008 ;	zegarek.c:219: temp_p = 2;
   0359 75 11 02           1009 	mov	_temp_p,#0x02
                           1010 ;	zegarek.c:220: wyswietlacze[2] -= 10;
   035C E5 16              1011 	mov	a,(_wyswietlacze + 0x0002)
   035E 24 F6              1012 	add	a,#0xf6
   0360 F5 16              1013 	mov	(_wyswietlacze + 0x0002),a
                           1014 ;	zegarek.c:221: wyswietlacze[3] -= 10;
   0362 E5 17              1015 	mov	a,(_wyswietlacze + 0x0003)
   0364 24 F6              1016 	add	a,#0xf6
   0366 F5 17              1017 	mov	(_wyswietlacze + 0x0003),a
                           1018 ;	zegarek.c:222: wyswietlacze[4] += 10;
   0368 74 0A              1019 	mov	a,#0x0A
   036A 25 18              1020 	add	a,(_wyswietlacze + 0x0004)
   036C F5 18              1021 	mov	(_wyswietlacze + 0x0004),a
                           1022 ;	zegarek.c:223: wyswietlacze[5] += 10;
   036E 74 0A              1023 	mov	a,#0x0A
   0370 25 19              1024 	add	a,(_wyswietlacze + 0x0005)
   0372 F5 19              1025 	mov	(_wyswietlacze + 0x0005),a
   0374 80 1B              1026 	sjmp	00131$
   0376                    1027 00125$:
                           1028 ;	zegarek.c:226: temp_p = 1;
   0376 75 11 01           1029 	mov	_temp_p,#0x01
                           1030 ;	zegarek.c:227: wyswietlacze[0] -= 10;
   0379 E5 14              1031 	mov	a,_wyswietlacze
   037B 24 F6              1032 	add	a,#0xf6
   037D F5 14              1033 	mov	_wyswietlacze,a
                           1034 ;	zegarek.c:228: wyswietlacze[1] -= 10;
   037F E5 15              1035 	mov	a,(_wyswietlacze + 0x0001)
   0381 24 F6              1036 	add	a,#0xf6
   0383 F5 15              1037 	mov	(_wyswietlacze + 0x0001),a
                           1038 ;	zegarek.c:229: wyswietlacze[2] += 10;
   0385 74 0A              1039 	mov	a,#0x0A
   0387 25 16              1040 	add	a,(_wyswietlacze + 0x0002)
   0389 F5 16              1041 	mov	(_wyswietlacze + 0x0002),a
                           1042 ;	zegarek.c:230: wyswietlacze[3] += 10;
   038B 74 0A              1043 	mov	a,#0x0A
   038D 25 17              1044 	add	a,(_wyswietlacze + 0x0003)
   038F F5 17              1045 	mov	(_wyswietlacze + 0x0003),a
   0391                    1046 00131$:
                           1047 ;	zegarek.c:233: if(kbd == 0b00001000) { //strza³ka w górê
   0391 74 08              1048 	mov	a,#0x08
   0393 B5 0C 1A           1049 	cjne	a,_kbd,00141$
                           1050 ;	zegarek.c:234: if(edit_mode) {
   0396 30 04 17           1051 	jnb	_edit_mode,00141$
                           1052 ;	zegarek.c:235: if(temp_p == 0) {
   0399 E5 11              1053 	mov	a,_temp_p
   039B 70 03              1054 	jnz	00133$
                           1055 ;	zegarek.c:236: inc_sec();
   039D 12 01 37           1056 	lcall	_inc_sec
   03A0                    1057 00133$:
                           1058 ;	zegarek.c:238: if(temp_p == 1) {
   03A0 74 01              1059 	mov	a,#0x01
   03A2 B5 11 03           1060 	cjne	a,_temp_p,00135$
                           1061 ;	zegarek.c:239: inc_min();
   03A5 12 01 9C           1062 	lcall	_inc_min
   03A8                    1063 00135$:
                           1064 ;	zegarek.c:241: if(temp_p == 2) {
   03A8 74 02              1065 	mov	a,#0x02
   03AA B5 11 03           1066 	cjne	a,_temp_p,00141$
                           1067 ;	zegarek.c:242: inc_hour();
   03AD 12 02 01           1068 	lcall	_inc_hour
   03B0                    1069 00141$:
                           1070 ;	zegarek.c:246: if(kbd == 0b00010000) { //strza³ka w dó³
   03B0 74 10              1071 	mov	a,#0x10
   03B2 B5 0C 1A           1072 	cjne	a,_kbd,00154$
                           1073 ;	zegarek.c:247: if(edit_mode) {
   03B5 30 04 17           1074 	jnb	_edit_mode,00154$
                           1075 ;	zegarek.c:248: if(temp_p == 0) {
   03B8 E5 11              1076 	mov	a,_temp_p
   03BA 70 03              1077 	jnz	00143$
                           1078 ;	zegarek.c:249: dec_sec();
   03BC 12 01 81           1079 	lcall	_dec_sec
   03BF                    1080 00143$:
                           1081 ;	zegarek.c:251: if(temp_p == 1) {
   03BF 74 01              1082 	mov	a,#0x01
   03C1 B5 11 03           1083 	cjne	a,_temp_p,00145$
                           1084 ;	zegarek.c:252: dec_min();
   03C4 12 01 E6           1085 	lcall	_dec_min
   03C7                    1086 00145$:
                           1087 ;	zegarek.c:254: if(temp_p == 2) {
   03C7 74 02              1088 	mov	a,#0x02
   03C9 B5 11 03           1089 	cjne	a,_temp_p,00154$
                           1090 ;	zegarek.c:255: dec_hour();
   03CC 02 02 4E           1091 	ljmp	_dec_hour
   03CF                    1092 00154$:
   03CF 22                 1093 	ret
                           1094 ;------------------------------------------------------------
                           1095 ;Allocation info for local variables in function 'enter_edit_mode'
                           1096 ;------------------------------------------------------------
                           1097 ;------------------------------------------------------------
                           1098 ;	zegarek.c:261: void enter_edit_mode(void) {
                           1099 ;	-----------------------------------------
                           1100 ;	 function enter_edit_mode
                           1101 ;	-----------------------------------------
   03D0                    1102 _enter_edit_mode:
                           1103 ;	zegarek.c:262: if(!edit_mode) {
   03D0 20 04 0A           1104 	jb	_edit_mode,00105$
                           1105 ;	zegarek.c:263: edit_mode = 1;
   03D3 D2 04              1106 	setb	_edit_mode
                           1107 ;	zegarek.c:264: if(INTERRUPT_FLAG != 1) {
   03D5 20 03 05           1108 	jb	_INTERRUPT_FLAG,00105$
                           1109 ;	zegarek.c:265: T0counter = 0;
   03D8 E4                 1110 	clr	a
   03D9 F5 12              1111 	mov	_T0counter,a
   03DB F5 13              1112 	mov	(_T0counter + 1),a
   03DD                    1113 00105$:
   03DD 22                 1114 	ret
                           1115 ;------------------------------------------------------------
                           1116 ;Allocation info for local variables in function 'refresh_display'
                           1117 ;------------------------------------------------------------
                           1118 ;------------------------------------------------------------
                           1119 ;	zegarek.c:269: void refresh_display(void) {
                           1120 ;	-----------------------------------------
                           1121 ;	 function refresh_display
                           1122 ;	-----------------------------------------
   03DE                    1123 _refresh_display:
                           1124 ;	zegarek.c:270: SEG_OFF = TRUE;
   03DE D2 96              1125 	setb	_SEG_OFF
                           1126 ;	zegarek.c:271: *led_wyb = led_b;
   03E0 85 08 82           1127 	mov	dpl,_led_wyb
   03E3 85 09 83           1128 	mov	dph,(_led_wyb + 1)
   03E6 E5 0F              1129 	mov	a,_led_b
   03E8 F0                 1130 	movx	@dptr,a
                           1131 ;	zegarek.c:272: *led_led = WZOR[wyswietlacze[led_p]];
   03E9 AA 0A              1132 	mov	r2,_led_led
   03EB AB 0B              1133 	mov	r3,(_led_led + 1)
   03ED E5 0E              1134 	mov	a,_led_p
   03EF 24 14              1135 	add	a,#_wyswietlacze
   03F1 F8                 1136 	mov	r0,a
   03F2 E6                 1137 	mov	a,@r0
   03F3 90 04 9B           1138 	mov	dptr,#_WZOR
   03F6 93                 1139 	movc	a,@a+dptr
   03F7 FC                 1140 	mov	r4,a
   03F8 8A 82              1141 	mov	dpl,r2
   03FA 8B 83              1142 	mov	dph,r3
   03FC F0                 1143 	movx	@dptr,a
                           1144 ;	zegarek.c:273: temp_b = led_b;
   03FD 85 0F 10           1145 	mov	_temp_b,_led_b
                           1146 ;	zegarek.c:274: kbdBefore = temp_b;
   0400 85 10 0D           1147 	mov	_kbdBefore,_temp_b
                           1148 ;	zegarek.c:275: SEG_OFF = FALSE;
   0403 C2 96              1149 	clr	_SEG_OFF
                           1150 ;	zegarek.c:276: if(led_p == 5) {
   0405 74 05              1151 	mov	a,#0x05
   0407 B5 0E 07           1152 	cjne	a,_led_p,00102$
                           1153 ;	zegarek.c:277: led_p = 0;
   040A 75 0E 00           1154 	mov	_led_p,#0x00
                           1155 ;	zegarek.c:278: led_b = 1;
   040D 75 0F 01           1156 	mov	_led_b,#0x01
   0410 22                 1157 	ret
   0411                    1158 00102$:
                           1159 ;	zegarek.c:281: led_p++;
   0411 05 0E              1160 	inc	_led_p
                           1161 ;	zegarek.c:282: led_b = led_b<<1;
   0413 E5 0F              1162 	mov	a,_led_b
   0415 25 0F              1163 	add	a,_led_b
   0417 F5 0F              1164 	mov	_led_b,a
   0419 22                 1165 	ret
                           1166 ;------------------------------------------------------------
                           1167 ;Allocation info for local variables in function 'main'
                           1168 ;------------------------------------------------------------
                           1169 ;i                         Allocated to registers 
                           1170 ;k                         Allocated to registers 
                           1171 ;------------------------------------------------------------
                           1172 ;	zegarek.c:285: void main()
                           1173 ;	-----------------------------------------
                           1174 ;	 function main
                           1175 ;	-----------------------------------------
   041A                    1176 _main:
                           1177 ;	zegarek.c:290: led_p = 0;
   041A 75 0E 00           1178 	mov	_led_p,#0x00
                           1179 ;	zegarek.c:291: led_b = 1;
   041D 75 0F 01           1180 	mov	_led_b,#0x01
                           1181 ;	zegarek.c:292: temp_b = 1;
   0420 75 10 01           1182 	mov	_temp_b,#0x01
                           1183 ;	zegarek.c:293: temp_p = 0;
   0423 75 11 00           1184 	mov	_temp_p,#0x00
                           1185 ;	zegarek.c:294: edit_mode = 0;
   0426 C2 04              1186 	clr	_edit_mode
                           1187 ;	zegarek.c:295: kbd = 0;
   0428 75 0C 00           1188 	mov	_kbd,#0x00
                           1189 ;	zegarek.c:296: kbdBefore = 0;
   042B 75 0D 00           1190 	mov	_kbdBefore,#0x00
                           1191 ;	zegarek.c:297: init_interrupts();
   042E 12 01 27           1192 	lcall	_init_interrupts
                           1193 ;	zegarek.c:298: while(TRUE) {
   0431                    1194 00118$:
                           1195 ;	zegarek.c:299: if(INTERRUPT_FLAG){
                           1196 ;	zegarek.c:300: INTERRUPT_FLAG=FALSE;
   0431 10 03 02           1197 	jbc	_INTERRUPT_FLAG,00132$
   0434 80 FB              1198 	sjmp	00118$
   0436                    1199 00132$:
                           1200 ;	zegarek.c:301: refresh_display();
   0436 12 03 DE           1201 	lcall	_refresh_display
                           1202 ;	zegarek.c:302: if(P3_5 && kbd == 0 ) {
   0439 30 B5 09           1203 	jnb	_P3_5,00105$
   043C E5 0C              1204 	mov	a,_kbd
   043E 70 05              1205 	jnz	00105$
                           1206 ;	zegarek.c:303: keyboard();
   0440 12 02 6C           1207 	lcall	_keyboard
   0443 80 0B              1208 	sjmp	00106$
   0445                    1209 00105$:
                           1210 ;	zegarek.c:305: else if(!P3_5 && kbd == kbdBefore) {
   0445 20 B5 08           1211 	jb	_P3_5,00106$
   0448 E5 0D              1212 	mov	a,_kbdBefore
   044A B5 0C 03           1213 	cjne	a,_kbd,00106$
                           1214 ;	zegarek.c:306: kbd = 0;
   044D 75 0C 00           1215 	mov	_kbd,#0x00
   0450                    1216 00106$:
                           1217 ;	zegarek.c:308: if(edit_mode && led_p == 5) {
   0450 30 04 08           1218 	jnb	_edit_mode,00109$
   0453 74 05              1219 	mov	a,#0x05
   0455 B5 0E 03           1220 	cjne	a,_led_p,00109$
                           1221 ;	zegarek.c:309: enter_edit_mode();
   0458 12 03 D0           1222 	lcall	_enter_edit_mode
   045B                    1223 00109$:
                           1224 ;	zegarek.c:311: if(!edit_mode) {
   045B 20 04 D3           1225 	jb	_edit_mode,00118$
                           1226 ;	zegarek.c:312: T0counter++;
   045E 05 12              1227 	inc	_T0counter
   0460 E4                 1228 	clr	a
   0461 B5 12 02           1229 	cjne	a,_T0counter,00142$
   0464 05 13              1230 	inc	(_T0counter + 1)
   0466                    1231 00142$:
                           1232 ;	zegarek.c:313: if(T0counter == 1000) { 
   0466 74 E8              1233 	mov	a,#0xE8
   0468 B5 12 C6           1234 	cjne	a,_T0counter,00118$
   046B 74 03              1235 	mov	a,#0x03
   046D B5 13 C1           1236 	cjne	a,(_T0counter + 1),00118$
                           1237 ;	zegarek.c:314: T0counter = 0;
   0470 E4                 1238 	clr	a
   0471 F5 12              1239 	mov	_T0counter,a
   0473 F5 13              1240 	mov	(_T0counter + 1),a
                           1241 ;	zegarek.c:315: incTime();
   0475 12 00 96           1242 	lcall	_incTime
   0478 80 B7              1243 	sjmp	00118$
                           1244 	.area CSEG    (CODE)
                           1245 	.area CONST   (CODE)
   049B                    1246 _WZOR:
   049B 3F                 1247 	.db #0x3F
   049C 06                 1248 	.db #0x06
   049D 5B                 1249 	.db #0x5B
   049E 4F                 1250 	.db #0x4F
   049F 66                 1251 	.db #0x66
   04A0 6D                 1252 	.db #0x6D
   04A1 7D                 1253 	.db #0x7D
   04A2 07                 1254 	.db #0x07
   04A3 7F                 1255 	.db #0x7F
   04A4 6F                 1256 	.db #0x6F
   04A5 BF                 1257 	.db #0xBF
   04A6 86                 1258 	.db #0x86
   04A7 DB                 1259 	.db #0xDB
   04A8 CF                 1260 	.db #0xCF
   04A9 E6                 1261 	.db #0xE6
   04AA ED                 1262 	.db #0xED
   04AB FD                 1263 	.db #0xFD
   04AC 87                 1264 	.db #0x87
   04AD FF                 1265 	.db #0xFF
   04AE EF                 1266 	.db #0xEF
                           1267 	.area XINIT   (CODE)
                           1268 	.area CABS    (ABS,CODE)
