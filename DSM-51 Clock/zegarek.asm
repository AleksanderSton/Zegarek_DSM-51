;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Dec 21 13:24:30 2023
;--------------------------------------------------------
	.module zegarek
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WZOR
	.globl _main
	.globl _init_interrupts
	.globl _timer0_isr
	.globl _incTime
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _edit_mode
	.globl _INTERRUPT_FLAG
	.globl _SEG_OFF
	.globl _t0_flag
	.globl _send_flag
	.globl _rec_flag
	.globl _LED
	.globl _wyswietlacze
	.globl _T0counter
	.globl _temp_p
	.globl _temp_b
	.globl _led_b
	.globl _led_p
	.globl _kbdBefore
	.globl _kbd
	.globl _led_led
	.globl _led_wyb
	.globl _inc_sec
	.globl _dec_sec
	.globl _inc_min
	.globl _dec_min
	.globl _inc_hour
	.globl _dec_hour
	.globl _keyboard
	.globl _enter_edit_mode
	.globl _refresh_display
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_led_wyb::
	.ds 2
_led_led::
	.ds 2
_kbd::
	.ds 1
_kbdBefore::
	.ds 1
_led_p::
	.ds 1
_led_b::
	.ds 1
_temp_b::
	.ds 1
_temp_p::
	.ds 1
_T0counter::
	.ds 2
_wyswietlacze::
	.ds 6
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_LED	=	0x0097
_rec_flag::
	.ds 1
_send_flag::
	.ds 1
_t0_flag::
	.ds 1
_SEG_OFF	=	0x0096
_INTERRUPT_FLAG::
	.ds 1
_edit_mode::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	zegarek.c:28: __xdata unsigned char * led_wyb = (__xdata unsigned char *) 0xFF30;
	mov	_led_wyb,#0x30
	mov	(_led_wyb + 1),#0xFF
;	zegarek.c:29: __xdata unsigned char * led_led = (__xdata unsigned char *) 0xFF38;
	mov	_led_led,#0x38
	mov	(_led_led + 1),#0xFF
;	zegarek.c:33: int T0counter = 0;
	clr	a
	mov	_T0counter,a
	mov	(_T0counter + 1),a
;	zegarek.c:37: unsigned char wyswietlacze[6] = {0,0,0,0,0,0};
	mov	_wyswietlacze,#0x00
	mov	(_wyswietlacze + 0x0001),#0x00
	mov	(_wyswietlacze + 0x0002),#0x00
	mov	(_wyswietlacze + 0x0003),#0x00
	mov	(_wyswietlacze + 0x0004),#0x00
	mov	(_wyswietlacze + 0x0005),#0x00
;	zegarek.c:26: __bit INTERRUPT_FLAG=FALSE;
	clr	_INTERRUPT_FLAG
;	zegarek.c:27: __bit edit_mode=FALSE;
	clr	_edit_mode
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'incTime'
;------------------------------------------------------------
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	zegarek.c:38: void incTime(void) {
;	-----------------------------------------
;	 function incTime
;	-----------------------------------------
_incTime:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	zegarek.c:40: if(wyswietlacze[5] == 2 && wyswietlacze[4] == 3 && wyswietlacze[3] == 5 && wyswietlacze[2] == 9 && wyswietlacze[1] == 5 && wyswietlacze[0] == 9) {
	mov	r2,(_wyswietlacze + 0x0005)
	cjne	r2,#0x02,00112$
	mov	a,#0x03
	cjne	a,(_wyswietlacze + 0x0004),00112$
	mov	a,#0x05
	cjne	a,(_wyswietlacze + 0x0003),00112$
	mov	a,#0x09
	cjne	a,(_wyswietlacze + 0x0002),00112$
	mov	a,#0x05
	cjne	a,(_wyswietlacze + 0x0001),00112$
	mov	a,#0x09
	cjne	a,_wyswietlacze,00112$
;	zegarek.c:41: for(i = 0; i < 6; i++) {
	mov	r3,#0x00
	mov	r4,#0x00
00119$:
	clr	c
	mov	a,r3
	subb	a,#0x06
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00123$
;	zegarek.c:42: `wyswietlacze[i] = 0;
	mov	a,r3
	add	a,#_wyswietlacze
	mov	r0,a
	mov	@r0,#0x00
;	zegarek.c:41: for(i = 0; i < 6; i++) {
	inc	r3
	cjne	r3,#0x00,00119$
	inc	r4
	sjmp	00119$
00112$:
;	zegarek.c:46: wyswietlacze[0]++;
	mov	r3,_wyswietlacze
	inc	r3
	mov	_wyswietlacze,r3
;	zegarek.c:47: if(wyswietlacze[0] >= 10) {
	cjne	r3,#0x0A,00152$
00152$:
	jc	00102$
;	zegarek.c:48: wyswietlacze[0] = 0;
	mov	_wyswietlacze,#0x00
;	zegarek.c:49: wyswietlacze[1]++;
	mov	a,(_wyswietlacze + 0x0001)
	mov	r3,a
	inc	a
	mov	(_wyswietlacze + 0x0001),a
00102$:
;	zegarek.c:51: if(wyswietlacze[1] >= 6) {
	mov	a,#0x100 - 0x06
	add	a,(_wyswietlacze + 0x0001)
	jnc	00104$
;	zegarek.c:52: wyswietlacze[2]++;
	mov	a,(_wyswietlacze + 0x0002)
	mov	r3,a
	inc	a
	mov	(_wyswietlacze + 0x0002),a
;	zegarek.c:53: wyswietlacze[1] = 0;
	mov	(_wyswietlacze + 0x0001),#0x00
00104$:
;	zegarek.c:55: if(wyswietlacze[2] >= 10) {
	mov	a,#0x100 - 0x0A
	add	a,(_wyswietlacze + 0x0002)
	jnc	00106$
;	zegarek.c:56: wyswietlacze[2] = 0;
	mov	(_wyswietlacze + 0x0002),#0x00
;	zegarek.c:57: wyswietlacze[3]++;
	mov	a,(_wyswietlacze + 0x0003)
	mov	r3,a
	inc	a
	mov	(_wyswietlacze + 0x0003),a
00106$:
;	zegarek.c:59: if(wyswietlacze[3] >= 6) {
	mov	a,#0x100 - 0x06
	add	a,(_wyswietlacze + 0x0003)
	jnc	00108$
;	zegarek.c:60: wyswietlacze[3] = 0;
	mov	(_wyswietlacze + 0x0003),#0x00
;	zegarek.c:61: wyswietlacze[4]++;
	mov	a,(_wyswietlacze + 0x0004)
	mov	r3,a
	inc	a
	mov	(_wyswietlacze + 0x0004),a
00108$:
;	zegarek.c:63: if(wyswietlacze[4] >= 10) {
	mov	a,#0x100 - 0x0A
	add	a,(_wyswietlacze + 0x0004)
	jnc	00123$
;	zegarek.c:64: wyswietlacze[4] = 0;
	mov	(_wyswietlacze + 0x0004),#0x00
;	zegarek.c:65: wyswietlacze[5]++;
	mov	a,r2
	inc	a
	mov	(_wyswietlacze + 0x0005),a
00123$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:69: void timer0_isr(void) __interrupt(1) {
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
;	zegarek.c:70: TH0 = TH_0;
	mov	_TH0,#0xFC
;	zegarek.c:71: TL0 = TL_0;
	mov	_TL0,#0x66
;	zegarek.c:72: INTERRUPT_FLAG = TRUE;
	setb	_INTERRUPT_FLAG
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'init_interrupts'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:74: void init_interrupts(void) {
;	-----------------------------------------
;	 function init_interrupts
;	-----------------------------------------
_init_interrupts:
;	zegarek.c:75: EA = TRUE;
	setb	_EA
;	zegarek.c:76: ET0 = TRUE;
	setb	_ET0
;	zegarek.c:77: TMOD = 0b00000001;
	mov	_TMOD,#0x01
;	zegarek.c:78: TH0 = TH_0;
	mov	_TH0,#0xFC
;	zegarek.c:79: TL0 = TL_0;
	mov	_TL0,#0x66
;	zegarek.c:80: TR0 = TRUE;
	setb	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inc_sec'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:82: void inc_sec(void) {
;	-----------------------------------------
;	 function inc_sec
;	-----------------------------------------
_inc_sec:
;	zegarek.c:83: wyswietlacze[0]++;
	mov	r2,_wyswietlacze
	inc	r2
	mov	_wyswietlacze,r2
;	zegarek.c:84: if(wyswietlacze[0] == 20) {
	cjne	r2,#0x14,00105$
;	zegarek.c:85: wyswietlacze[0] = 10;
	mov	_wyswietlacze,#0x0A
;	zegarek.c:86: wyswietlacze[1]++;
	mov	r2,(_wyswietlacze + 0x0001)
	inc	r2
	mov	(_wyswietlacze + 0x0001),r2
;	zegarek.c:87: if((wyswietlacze[1]-10)*10 + (wyswietlacze[0]-10) >= 60) {
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xf6
	mov	__mulint_PARM_2,a
	mov	a,r3
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	mov	r4,_wyswietlacze
	mov	r5,#0x00
	mov	a,r4
	add	a,#0xf6
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x3C
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	zegarek.c:88: wyswietlacze[0] = 10;
	mov	_wyswietlacze,#0x0A
;	zegarek.c:89: wyswietlacze[1] = 10;
	mov	(_wyswietlacze + 0x0001),#0x0A
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec_sec'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:93: void dec_sec(void) {
;	-----------------------------------------
;	 function dec_sec
;	-----------------------------------------
_dec_sec:
;	zegarek.c:94: if(wyswietlacze[0] == 10) {
	mov	r2,_wyswietlacze
	cjne	r2,#0x0A,00105$
;	zegarek.c:95: wyswietlacze[0] = 19;
	mov	_wyswietlacze,#0x13
;	zegarek.c:96: if(wyswietlacze[1] == 10) {
	mov	r3,(_wyswietlacze + 0x0001)
	cjne	r3,#0x0A,00102$
;	zegarek.c:97: wyswietlacze[1] = 15;
	mov	(_wyswietlacze + 0x0001),#0x0F
	ret
00102$:
;	zegarek.c:100: wyswietlacze[1]--;
	mov	a,r3
	dec	a
	mov	(_wyswietlacze + 0x0001),a
	ret
00105$:
;	zegarek.c:104: wyswietlacze[0]--;
	mov	a,r2
	dec	a
	mov	_wyswietlacze,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inc_min'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:107: void inc_min(void) {
;	-----------------------------------------
;	 function inc_min
;	-----------------------------------------
_inc_min:
;	zegarek.c:108: wyswietlacze[2]++;
	mov	r2,(_wyswietlacze + 0x0002)
	inc	r2
	mov	(_wyswietlacze + 0x0002),r2
;	zegarek.c:109: if(wyswietlacze[2] == 20) {
	cjne	r2,#0x14,00105$
;	zegarek.c:110: wyswietlacze[2] = 10;
	mov	(_wyswietlacze + 0x0002),#0x0A
;	zegarek.c:111: wyswietlacze[3]++;
	mov	r2,(_wyswietlacze + 0x0003)
	inc	r2
	mov	(_wyswietlacze + 0x0003),r2
;	zegarek.c:112: if((wyswietlacze[3]-10)*10 + (wyswietlacze[2]-10) >= 60) {
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xf6
	mov	__mulint_PARM_2,a
	mov	a,r3
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	mov	r4,(_wyswietlacze + 0x0002)
	mov	r5,#0x00
	mov	a,r4
	add	a,#0xf6
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x3C
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	zegarek.c:113: wyswietlacze[2] = 10;
	mov	(_wyswietlacze + 0x0002),#0x0A
;	zegarek.c:114: wyswietlacze[3] = 10;
	mov	(_wyswietlacze + 0x0003),#0x0A
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec_min'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:118: void dec_min(void) {
;	-----------------------------------------
;	 function dec_min
;	-----------------------------------------
_dec_min:
;	zegarek.c:119: if(wyswietlacze[2] == 10) {
	mov	r2,(_wyswietlacze + 0x0002)
	cjne	r2,#0x0A,00105$
;	zegarek.c:120: wyswietlacze[2] = 19;
	mov	(_wyswietlacze + 0x0002),#0x13
;	zegarek.c:121: if(wyswietlacze[3] == 10) {
	mov	r3,(_wyswietlacze + 0x0003)
	cjne	r3,#0x0A,00102$
;	zegarek.c:122: wyswietlacze[3] = 15;
	mov	(_wyswietlacze + 0x0003),#0x0F
	ret
00102$:
;	zegarek.c:125: wyswietlacze[3]--;
	mov	a,r3
	dec	a
	mov	(_wyswietlacze + 0x0003),a
	ret
00105$:
;	zegarek.c:129: wyswietlacze[2]--;
	mov	a,r2
	dec	a
	mov	(_wyswietlacze + 0x0002),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inc_hour'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:132: void inc_hour(void) {
;	-----------------------------------------
;	 function inc_hour
;	-----------------------------------------
_inc_hour:
;	zegarek.c:133: wyswietlacze[4]++;
	mov	r2,(_wyswietlacze + 0x0004)
	inc	r2
	mov	(_wyswietlacze + 0x0004),r2
;	zegarek.c:134: if(wyswietlacze[4] == 20) {
	cjne	r2,#0x14,00102$
;	zegarek.c:135: wyswietlacze[4] = 10;
	mov	(_wyswietlacze + 0x0004),#0x0A
;	zegarek.c:136: wyswietlacze[5]++;
	mov	a,(_wyswietlacze + 0x0005)
	mov	r2,a
	inc	a
	mov	(_wyswietlacze + 0x0005),a
00102$:
;	zegarek.c:139: if((wyswietlacze[5]-10)*10 + (wyswietlacze[4]-10) >= 24) {
	mov	r2,(_wyswietlacze + 0x0005)
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xf6
	mov	__mulint_PARM_2,a
	mov	a,r3
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	mov	r4,(_wyswietlacze + 0x0004)
	mov	r5,#0x00
	mov	a,r4
	add	a,#0xf6
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x18
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	zegarek.c:140: wyswietlacze[4] = 10;
	mov	(_wyswietlacze + 0x0004),#0x0A
;	zegarek.c:141: wyswietlacze[5] = 10;
	mov	(_wyswietlacze + 0x0005),#0x0A
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec_hour'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:145: void dec_hour(void) {
;	-----------------------------------------
;	 function dec_hour
;	-----------------------------------------
_dec_hour:
;	zegarek.c:146: if(wyswietlacze[4] == 10) {
	mov	r2,(_wyswietlacze + 0x0004)
	cjne	r2,#0x0A,00105$
;	zegarek.c:147: wyswietlacze[4] = 19;
	mov	(_wyswietlacze + 0x0004),#0x13
;	zegarek.c:148: if(wyswietlacze[5] == 10) {
	mov	r3,(_wyswietlacze + 0x0005)
	cjne	r3,#0x0A,00102$
;	zegarek.c:149: wyswietlacze[5] = 12;
	mov	(_wyswietlacze + 0x0005),#0x0C
;	zegarek.c:150: wyswietlacze[4] = 13;
	mov	(_wyswietlacze + 0x0004),#0x0D
	ret
00102$:
;	zegarek.c:153: wyswietlacze[5]--;
	mov	a,r3
	dec	a
	mov	(_wyswietlacze + 0x0005),a
	ret
00105$:
;	zegarek.c:157: wyswietlacze[4]--;
	mov	a,r2
	dec	a
	mov	(_wyswietlacze + 0x0004),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keyboard'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:160: void keyboard(void) {
;	-----------------------------------------
;	 function keyboard
;	-----------------------------------------
_keyboard:
;	zegarek.c:161: kbd = kbdBefore;
	mov	_kbd,_kbdBefore
;	zegarek.c:162: if(kbd == 0b00000001) { //enter
	mov	a,#0x01
	cjne	a,_kbd,00115$
;	zegarek.c:163: if(edit_mode == 1) {
;	zegarek.c:164: edit_mode = 0;
	jbc	_edit_mode,00181$
	sjmp	00112$
00181$:
;	zegarek.c:165: if(temp_p == 0) {
	mov	a,_temp_p
	jnz	00107$
;	zegarek.c:166: wyswietlacze[0] -= 10;
	mov	a,_wyswietlacze
	add	a,#0xf6
	mov	_wyswietlacze,a
;	zegarek.c:167: wyswietlacze[1] -= 10;
	mov	a,(_wyswietlacze + 0x0001)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0001),a
	sjmp	00108$
00107$:
;	zegarek.c:169: else if(temp_p == 1) {
	mov	a,#0x01
	cjne	a,_temp_p,00104$
;	zegarek.c:170: wyswietlacze[2] -= 10;
	mov	a,(_wyswietlacze + 0x0002)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0002),a
;	zegarek.c:171: wyswietlacze[3] -= 10;
	mov	a,(_wyswietlacze + 0x0003)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0003),a
	sjmp	00108$
00104$:
;	zegarek.c:173: else if(temp_p == 2) {
	mov	a,#0x02
	cjne	a,_temp_p,00108$
;	zegarek.c:174: wyswietlacze[4] -= 10;
	mov	a,(_wyswietlacze + 0x0004)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0004),a
;	zegarek.c:175: wyswietlacze[5] -= 10;
	mov	a,(_wyswietlacze + 0x0005)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0005),a
00108$:
;	zegarek.c:177: temp_p = 0;
	mov	_temp_p,#0x00
	sjmp	00115$
00112$:
;	zegarek.c:179: else if(!edit_mode) {
	jb	_edit_mode,00115$
;	zegarek.c:180: enter_edit_mode();
	lcall	_enter_edit_mode
;	zegarek.c:181: wyswietlacze[0] += 10;
	mov	a,#0x0A
	add	a,_wyswietlacze
	mov	_wyswietlacze,a
;	zegarek.c:182: wyswietlacze[1] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0001)
	mov	(_wyswietlacze + 0x0001),a
00115$:
;	zegarek.c:186: if(edit_mode) {
	jb	_edit_mode,00188$
	ret
00188$:
;	zegarek.c:187: if(kbd == 0b00000100) { //strza³ka w prawo
	mov	a,#0x04
	cjne	a,_kbd,00123$
;	zegarek.c:188: if(temp_p == 0) {
	mov	a,_temp_p
	jnz	00120$
;	zegarek.c:189: temp_p = 2;
	mov	_temp_p,#0x02
;	zegarek.c:190: wyswietlacze[0] -= 10;
	mov	a,_wyswietlacze
	add	a,#0xf6
	mov	_wyswietlacze,a
;	zegarek.c:191: wyswietlacze[1] -= 10;
	mov	a,(_wyswietlacze + 0x0001)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0001),a
;	zegarek.c:192: wyswietlacze[4] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0004)
	mov	(_wyswietlacze + 0x0004),a
;	zegarek.c:193: wyswietlacze[5] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0005)
	mov	(_wyswietlacze + 0x0005),a
	sjmp	00123$
00120$:
;	zegarek.c:195: else if(temp_p == 1) {
	mov	a,#0x01
	cjne	a,_temp_p,00117$
;	zegarek.c:196: temp_p = 0;
	mov	_temp_p,#0x00
;	zegarek.c:197: wyswietlacze[2] -= 10;
	mov	a,(_wyswietlacze + 0x0002)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0002),a
;	zegarek.c:198: wyswietlacze[3] -= 10;
	mov	a,(_wyswietlacze + 0x0003)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0003),a
;	zegarek.c:199: wyswietlacze[0] += 10;
	mov	a,#0x0A
	add	a,_wyswietlacze
	mov	_wyswietlacze,a
;	zegarek.c:200: wyswietlacze[1] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0001)
	mov	(_wyswietlacze + 0x0001),a
	sjmp	00123$
00117$:
;	zegarek.c:203: temp_p = 1;
	mov	_temp_p,#0x01
;	zegarek.c:204: wyswietlacze[4] -= 10;
	mov	a,(_wyswietlacze + 0x0004)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0004),a
;	zegarek.c:205: wyswietlacze[5] -= 10;
	mov	a,(_wyswietlacze + 0x0005)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0005),a
;	zegarek.c:206: wyswietlacze[2] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0002)
	mov	(_wyswietlacze + 0x0002),a
;	zegarek.c:207: wyswietlacze[3] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0003)
	mov	(_wyswietlacze + 0x0003),a
00123$:
;	zegarek.c:210: if(kbd == 0b00100000) { //strza³ka w lewo
	mov	a,#0x20
	cjne	a,_kbd,00131$
;	zegarek.c:211: if(temp_p == 2) {
	mov	a,#0x02
	cjne	a,_temp_p,00128$
;	zegarek.c:212: temp_p = 0;
	mov	_temp_p,#0x00
;	zegarek.c:213: wyswietlacze[5] -= 10;
	mov	a,(_wyswietlacze + 0x0005)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0005),a
;	zegarek.c:214: wyswietlacze[4] -= 10;
	mov	a,(_wyswietlacze + 0x0004)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0004),a
;	zegarek.c:215: wyswietlacze[0] += 10;
	mov	a,#0x0A
	add	a,_wyswietlacze
	mov	_wyswietlacze,a
;	zegarek.c:216: wyswietlacze[1] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0001)
	mov	(_wyswietlacze + 0x0001),a
	sjmp	00131$
00128$:
;	zegarek.c:218: else if(temp_p == 1) {
	mov	a,#0x01
	cjne	a,_temp_p,00125$
;	zegarek.c:219: temp_p = 2;
	mov	_temp_p,#0x02
;	zegarek.c:220: wyswietlacze[2] -= 10;
	mov	a,(_wyswietlacze + 0x0002)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0002),a
;	zegarek.c:221: wyswietlacze[3] -= 10;
	mov	a,(_wyswietlacze + 0x0003)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0003),a
;	zegarek.c:222: wyswietlacze[4] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0004)
	mov	(_wyswietlacze + 0x0004),a
;	zegarek.c:223: wyswietlacze[5] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0005)
	mov	(_wyswietlacze + 0x0005),a
	sjmp	00131$
00125$:
;	zegarek.c:226: temp_p = 1;
	mov	_temp_p,#0x01
;	zegarek.c:227: wyswietlacze[0] -= 10;
	mov	a,_wyswietlacze
	add	a,#0xf6
	mov	_wyswietlacze,a
;	zegarek.c:228: wyswietlacze[1] -= 10;
	mov	a,(_wyswietlacze + 0x0001)
	add	a,#0xf6
	mov	(_wyswietlacze + 0x0001),a
;	zegarek.c:229: wyswietlacze[2] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0002)
	mov	(_wyswietlacze + 0x0002),a
;	zegarek.c:230: wyswietlacze[3] += 10;
	mov	a,#0x0A
	add	a,(_wyswietlacze + 0x0003)
	mov	(_wyswietlacze + 0x0003),a
00131$:
;	zegarek.c:233: if(kbd == 0b00001000) { //strza³ka w górê
	mov	a,#0x08
	cjne	a,_kbd,00141$
;	zegarek.c:234: if(edit_mode) {
	jnb	_edit_mode,00141$
;	zegarek.c:235: if(temp_p == 0) {
	mov	a,_temp_p
	jnz	00133$
;	zegarek.c:236: inc_sec();
	lcall	_inc_sec
00133$:
;	zegarek.c:238: if(temp_p == 1) {
	mov	a,#0x01
	cjne	a,_temp_p,00135$
;	zegarek.c:239: inc_min();
	lcall	_inc_min
00135$:
;	zegarek.c:241: if(temp_p == 2) {
	mov	a,#0x02
	cjne	a,_temp_p,00141$
;	zegarek.c:242: inc_hour();
	lcall	_inc_hour
00141$:
;	zegarek.c:246: if(kbd == 0b00010000) { //strza³ka w dó³
	mov	a,#0x10
	cjne	a,_kbd,00154$
;	zegarek.c:247: if(edit_mode) {
	jnb	_edit_mode,00154$
;	zegarek.c:248: if(temp_p == 0) {
	mov	a,_temp_p
	jnz	00143$
;	zegarek.c:249: dec_sec();
	lcall	_dec_sec
00143$:
;	zegarek.c:251: if(temp_p == 1) {
	mov	a,#0x01
	cjne	a,_temp_p,00145$
;	zegarek.c:252: dec_min();
	lcall	_dec_min
00145$:
;	zegarek.c:254: if(temp_p == 2) {
	mov	a,#0x02
	cjne	a,_temp_p,00154$
;	zegarek.c:255: dec_hour();
	ljmp	_dec_hour
00154$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enter_edit_mode'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:261: void enter_edit_mode(void) {
;	-----------------------------------------
;	 function enter_edit_mode
;	-----------------------------------------
_enter_edit_mode:
;	zegarek.c:262: if(!edit_mode) {
	jb	_edit_mode,00105$
;	zegarek.c:263: edit_mode = 1;
	setb	_edit_mode
;	zegarek.c:264: if(INTERRUPT_FLAG != 1) {
	jb	_INTERRUPT_FLAG,00105$
;	zegarek.c:265: T0counter = 0;
	clr	a
	mov	_T0counter,a
	mov	(_T0counter + 1),a
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'refresh_display'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarek.c:269: void refresh_display(void) {
;	-----------------------------------------
;	 function refresh_display
;	-----------------------------------------
_refresh_display:
;	zegarek.c:270: SEG_OFF = TRUE;
	setb	_SEG_OFF
;	zegarek.c:271: *led_wyb = led_b;
	mov	dpl,_led_wyb
	mov	dph,(_led_wyb + 1)
	mov	a,_led_b
	movx	@dptr,a
;	zegarek.c:272: *led_led = WZOR[wyswietlacze[led_p]];
	mov	r2,_led_led
	mov	r3,(_led_led + 1)
	mov	a,_led_p
	add	a,#_wyswietlacze
	mov	r0,a
	mov	a,@r0
	mov	dptr,#_WZOR
	movc	a,@a+dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	zegarek.c:273: temp_b = led_b;
	mov	_temp_b,_led_b
;	zegarek.c:274: kbdBefore = temp_b;
	mov	_kbdBefore,_temp_b
;	zegarek.c:275: SEG_OFF = FALSE;
	clr	_SEG_OFF
;	zegarek.c:276: if(led_p == 5) {
	mov	a,#0x05
	cjne	a,_led_p,00102$
;	zegarek.c:277: led_p = 0;
	mov	_led_p,#0x00
;	zegarek.c:278: led_b = 1;
	mov	_led_b,#0x01
	ret
00102$:
;	zegarek.c:281: led_p++;
	inc	_led_p
;	zegarek.c:282: led_b = led_b<<1;
	mov	a,_led_b
	add	a,_led_b
	mov	_led_b,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers 
;k                         Allocated to registers 
;------------------------------------------------------------
;	zegarek.c:285: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	zegarek.c:290: led_p = 0;
	mov	_led_p,#0x00
;	zegarek.c:291: led_b = 1;
	mov	_led_b,#0x01
;	zegarek.c:292: temp_b = 1;
	mov	_temp_b,#0x01
;	zegarek.c:293: temp_p = 0;
	mov	_temp_p,#0x00
;	zegarek.c:294: edit_mode = 0;
	clr	_edit_mode
;	zegarek.c:295: kbd = 0;
	mov	_kbd,#0x00
;	zegarek.c:296: kbdBefore = 0;
	mov	_kbdBefore,#0x00
;	zegarek.c:297: init_interrupts();
	lcall	_init_interrupts
;	zegarek.c:298: while(TRUE) {
00118$:
;	zegarek.c:299: if(INTERRUPT_FLAG){
;	zegarek.c:300: INTERRUPT_FLAG=FALSE;
	jbc	_INTERRUPT_FLAG,00132$
	sjmp	00118$
00132$:
;	zegarek.c:301: refresh_display();
	lcall	_refresh_display
;	zegarek.c:302: if(P3_5 && kbd == 0 ) {
	jnb	_P3_5,00105$
	mov	a,_kbd
	jnz	00105$
;	zegarek.c:303: keyboard();
	lcall	_keyboard
	sjmp	00106$
00105$:
;	zegarek.c:305: else if(!P3_5 && kbd == kbdBefore) {
	jb	_P3_5,00106$
	mov	a,_kbdBefore
	cjne	a,_kbd,00106$
;	zegarek.c:306: kbd = 0;
	mov	_kbd,#0x00
00106$:
;	zegarek.c:308: if(edit_mode && led_p == 5) {
	jnb	_edit_mode,00109$
	mov	a,#0x05
	cjne	a,_led_p,00109$
;	zegarek.c:309: enter_edit_mode();
	lcall	_enter_edit_mode
00109$:
;	zegarek.c:311: if(!edit_mode) {
	jb	_edit_mode,00118$
;	zegarek.c:312: T0counter++;
	inc	_T0counter
	clr	a
	cjne	a,_T0counter,00142$
	inc	(_T0counter + 1)
00142$:
;	zegarek.c:313: if(T0counter == 1000) { 
	mov	a,#0xE8
	cjne	a,_T0counter,00118$
	mov	a,#0x03
	cjne	a,(_T0counter + 1),00118$
;	zegarek.c:314: T0counter = 0;
	clr	a
	mov	_T0counter,a
	mov	(_T0counter + 1),a
;	zegarek.c:315: incTime();
	lcall	_incTime
	sjmp	00118$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_WZOR:
	.db #0x3F
	.db #0x06
	.db #0x5B
	.db #0x4F
	.db #0x66
	.db #0x6D
	.db #0x7D
	.db #0x07
	.db #0x7F
	.db #0x6F
	.db #0xBF
	.db #0x86
	.db #0xDB
	.db #0xCF
	.db #0xE6
	.db #0xED
	.db #0xFD
	.db #0x87
	.db #0xFF
	.db #0xEF
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
