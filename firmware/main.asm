;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #10186 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"main.c"
	list	p=10f322
	radix dec
	include "p10f322.inc"
;--------------------------------------------------------
; config word(s)
;--------------------------------------------------------
	__config 0x3fe0
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_STATUSbits
	extern	_PORTAbits
	extern	_TRISAbits
	extern	_LATAbits
	extern	_ANSELAbits
	extern	_WPUAbits
	extern	_PCLATHbits
	extern	_INTCONbits
	extern	_PIR1bits
	extern	_PIE1bits
	extern	_OPTION_REGbits
	extern	_PCONbits
	extern	_OSCCONbits
	extern	_T2CONbits
	extern	_PWM1DCLbits
	extern	_PWM1DCHbits
	extern	_PWM1CONbits
	extern	_PWM1CON0bits
	extern	_PWM2DCLbits
	extern	_PWM2DCHbits
	extern	_PWM2CONbits
	extern	_PWM2CON0bits
	extern	_IOCAPbits
	extern	_IOCANbits
	extern	_IOCAFbits
	extern	_FVRCONbits
	extern	_ADCONbits
	extern	_PMADRHbits
	extern	_PMCON1bits
	extern	_CLKRCONbits
	extern	_NCO1ACCLbits
	extern	_NCO1ACCHbits
	extern	_NCO1ACCUbits
	extern	_NCO1INCLbits
	extern	_NCO1INCHbits
	extern	_NCO1CONbits
	extern	_NCO1CLKbits
	extern	_WDTCONbits
	extern	_CLC1CONbits
	extern	_CLC1SEL0bits
	extern	_CLC1SEL1bits
	extern	_CLC1POLbits
	extern	_CLC1GLS0bits
	extern	_CLC1GLS1bits
	extern	_CLC1GLS2bits
	extern	_CLC1GLS3bits
	extern	_CWG1CON0bits
	extern	_CWG1CON1bits
	extern	_CWG1CON2bits
	extern	_CWG1DBRbits
	extern	_CWG1DBFbits
	extern	_VREGCONbits
	extern	_BORCONbits
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_TRISA
	extern	_LATA
	extern	_ANSELA
	extern	_WPUA
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_PIE1
	extern	_OPTION_REG
	extern	_PCON
	extern	_OSCCON
	extern	_TMR2
	extern	_PR2
	extern	_T2CON
	extern	_PWM1DCL
	extern	_PWM1DCH
	extern	_PWM1CON
	extern	_PWM1CON0
	extern	_PWM2DCL
	extern	_PWM2DCH
	extern	_PWM2CON
	extern	_PWM2CON0
	extern	_IOCAP
	extern	_IOCAN
	extern	_IOCAF
	extern	_FVRCON
	extern	_ADRES
	extern	_ADCON
	extern	_PMADR
	extern	_PMADRL
	extern	_PMADRH
	extern	_PMDAT
	extern	_PMDATL
	extern	_PMDATH
	extern	_PMCON1
	extern	_PMCON2
	extern	_CLKRCON
	extern	_NCO1ACC
	extern	_NCO1ACCL
	extern	_NCO1ACCH
	extern	_NCO1ACCU
	extern	_NCO1INC
	extern	_NCO1INCL
	extern	_NCO1INCH
	extern	_NCO1INCU
	extern	_NCO1CON
	extern	_NCO1CLK
	extern	_WDTCON
	extern	_CLC1CON
	extern	_CLC1SEL0
	extern	_CLC1SEL1
	extern	_CLC1POL
	extern	_CLC1GLS0
	extern	_CLC1GLS1
	extern	_CLC1GLS2
	extern	_CLC1GLS3
	extern	_CWG1CON0
	extern	_CWG1CON1
	extern	_CWG1CON2
	extern	_CWG1DBR
	extern	_CWG1DBF
	extern	_VREGCON
	extern	_BORCON
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_configPin
	global	_offCount
	global	_onCount
	global	_debounce
	global	_wait

	global PSAVE
	global SSAVE
	global WSAVE
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0040
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_main_0	udata
_configPin	res	1

UD_main_1	udata
_offCount	res	2

UD_main_2	udata
_onCount	res	1

UD_main_3	udata
_debounce	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_main_0	udata
r0x1005	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_main_0	idata
_wait
	db	0x01, 0x00

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_main	code
;***
;  pBlock Stats: dbName = M
;***
;has an exit
;1 compiler assigned register :
;   r0x1005
;; Starting pCode block
S_main__main	code
_main:
; 2 exit points
;	.line	21; "main.c"	NOT_WPUEN = 0; // activate pullups
	BCF	_OPTION_REGbits,7
;	.line	22; "main.c"	ANSELA = 0; // enable digital input buffers
	CLRF	_ANSELA
;	.line	23; "main.c"	OSCCONbits.IRCF = 0b101; // 4MHz
	MOVLW	(_OSCCONbits + 0)
	ANDLW	0x8f
	IORLW	0x50
	MOVWF	(_OSCCONbits + 0)
;	.line	25; "main.c"	TRISA0 = 1;
	BSF	_TRISAbits,0
;	.line	27; "main.c"	RELAISON = 0;
	BCF	_LATAbits,1
;	.line	28; "main.c"	TRISA1 = 0;
	BCF	_TRISAbits,1
;	.line	30; "main.c"	TRISA2 = 1;
	BSF	_TRISAbits,2
;	.line	33; "main.c"	configPin = RA2;
	CLRF	r0x1005
	BTFSC	_PORTAbits,2
	INCF	r0x1005,F
	MOVF	r0x1005,W
	MOVWF	_configPin
_00135_DS_:
;	.line	39; "main.c"	offCount = 0;
	CLRF	_offCount
	CLRF	(_offCount + 1)
;	.line	40; "main.c"	onCount = 0;
	CLRF	_onCount
;	.line	41; "main.c"	configPin = RA2;
	CLRF	r0x1005
	BTFSC	_PORTAbits,2
	INCF	r0x1005,F
	MOVF	r0x1005,W
	MOVWF	_configPin
_00107_DS_:
;	.line	42; "main.c"	while(SERVOPULSE == 0) {
	BTFSC	_PORTAbits,0
	GOTO	_00112_DS_
;;unsigned compare: left < lit(0x9C4=2500), size=2
;	.line	43; "main.c"	if(offCount < INACTIVE_TIME) offCount++; // 15 instructions (see main.lst)
	MOVLW	0x09
	SUBWF	(_offCount + 1),W
	BTFSS	STATUS,2
	GOTO	_00184_DS_
	MOVLW	0xc4
	SUBWF	_offCount,W
_00184_DS_:
	BTFSC	STATUS,0
	GOTO	_00107_DS_
;;genSkipc:3257: created from rifx:0x7ffce6b381c0
	INCF	_offCount,F
	BTFSC	STATUS,2
	INCF	(_offCount + 1),F
	GOTO	_00107_DS_
_00112_DS_:
;	.line	46; "main.c"	while(SERVOPULSE != 0) {
	BTFSS	_PORTAbits,0
	GOTO	_00114_DS_
;;unsigned compare: left < lit(0xFF=255), size=1
;	.line	47; "main.c"	if(onCount < 255) onCount++; // 9 instructions (see main.lst)
	MOVLW	0xff
	SUBWF	_onCount,W
	BTFSC	STATUS,0
	GOTO	_00112_DS_
;;genSkipc:3257: created from rifx:0x7ffce6b381c0
	INCF	_onCount,F
	GOTO	_00112_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xAC=172), size=1
_00114_DS_:
;	.line	49; "main.c"	if(onCount > (PULSETHRES + PULSEDEADBAND)) {
	MOVLW	0xac
	SUBWF	_onCount,W
	BTFSS	STATUS,0
	GOTO	_00132_DS_
;;genSkipc:3257: created from rifx:0x7ffce6b381c0
;;unsigned compare: left < lit(0x5=5), size=1
;	.line	50; "main.c"	if(debounce < DEBOUNCE_MAX) debounce++;
	MOVLW	0x05
;	.line	51; "main.c"	if(debounce == DEBOUNCE_MAX) {
	SUBWF	_debounce,W
	BTFSS	STATUS,0
	INCF	_debounce,F
	MOVF	_debounce,W
	XORLW	0x05
	BTFSS	STATUS,2
	GOTO	_00135_DS_
;	.line	52; "main.c"	if(configPin) RELAISON = 1;
	MOVLW	0x00
	IORWF	_configPin,W
	BTFSC	STATUS,2
	GOTO	_00118_DS_
	BSF	_LATAbits,1
	GOTO	_00135_DS_
_00118_DS_:
;	.line	53; "main.c"	else RELAISON = 0;
	BCF	_LATAbits,1
	GOTO	_00135_DS_
;;unsigned compare: left < lit(0xA1=161), size=1
_00132_DS_:
;	.line	55; "main.c"	} else if(onCount < (PULSETHRES - PULSEDEADBAND)) {
	MOVLW	0xa1
	SUBWF	_onCount,W
	BTFSC	STATUS,0
	GOTO	_00135_DS_
;;genSkipc:3257: created from rifx:0x7ffce6b381c0
;	.line	56; "main.c"	if(debounce > 0) debounce--;
	MOVLW	0x00
;	.line	57; "main.c"	if(debounce == 0) {
	IORWF	_debounce,W
	BTFSS	STATUS,2
	DECF	_debounce,F
	MOVLW	0x00
	IORWF	_debounce,W
	BTFSS	STATUS,2
	GOTO	_00135_DS_
;	.line	58; "main.c"	if(configPin) RELAISON = 0;
	MOVLW	0x00
	IORWF	_configPin,W
	BTFSC	STATUS,2
	GOTO	_00125_DS_
	BCF	_LATAbits,1
	GOTO	_00135_DS_
_00125_DS_:
;	.line	59; "main.c"	else RELAISON = 1;
	BSF	_LATAbits,1
	GOTO	_00135_DS_
;	.line	63; "main.c"	}
	RETURN	
; exit point of _main


;	code size estimation:
;	   86+    0 =    86 instructions (  172 byte)

	end
