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
;	.line	16; "main.c"	TRISA0 = 1;
	BSF	_TRISAbits,0
;	.line	17; "main.c"	LATA1 = 0;
	BCF	_LATAbits,1
;	.line	18; "main.c"	TRISA1 = 0;
	BCF	_TRISAbits,1
;	.line	19; "main.c"	TRISA2 = 1;
	BSF	_TRISAbits,2
;	.line	21; "main.c"	OSCCONbits.IRCF = 0b101; // 4MHz
	MOVLW	(_OSCCONbits + 0)
	ANDLW	0x8f
	IORLW	0x50
	MOVWF	(_OSCCONbits + 0)
;	.line	23; "main.c"	configPin = RA2;
	CLRF	r0x1005
	BTFSC	_PORTAbits,2
	INCF	r0x1005,F
	MOVF	r0x1005,W
	MOVWF	_configPin
_00134_DS_:
;	.line	26; "main.c"	offCount = 0;
	CLRF	_offCount
	CLRF	(_offCount + 1)
_00108_DS_:
;	.line	27; "main.c"	while(!RA0) {
	BTFSC	_PORTAbits,0
	GOTO	_00110_DS_
;;unsigned compare: left < lit(0x9C4=2500), size=2
;	.line	28; "main.c"	if(offCount < INACTIVE_TIME) offCount++; // 15 instructions (see main.lst)
	MOVLW	0x09
	SUBWF	(_offCount + 1),W
	BTFSS	STATUS,2
	GOTO	_00180_DS_
	MOVLW	0xc4
	SUBWF	_offCount,W
_00180_DS_:
	BTFSC	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3257: created from rifx:0x7ffc4ff75040
	INCF	_offCount,F
	BTFSC	STATUS,2
	INCF	(_offCount + 1),F
	GOTO	_00108_DS_
_00106_DS_:
;	.line	29; "main.c"	else LATA1 = 0; // switch off if inactive too long
	BCF	_LATAbits,1
	GOTO	_00108_DS_
_00110_DS_:
;	.line	31; "main.c"	onCount = 0;
	CLRF	_onCount
_00113_DS_:
;	.line	32; "main.c"	while(RA0) {
	BTFSS	_PORTAbits,0
	GOTO	_00115_DS_
;;unsigned compare: left < lit(0xFF=255), size=1
;	.line	33; "main.c"	if(onCount < 255) onCount++; // 9 instructions (see main.lst)
	MOVLW	0xff
	SUBWF	_onCount,W
	BTFSC	STATUS,0
	GOTO	_00113_DS_
;;genSkipc:3257: created from rifx:0x7ffc4ff75040
	INCF	_onCount,F
	GOTO	_00113_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xA7=167), size=1
_00115_DS_:
;	.line	35; "main.c"	if(onCount > PULSETHRES) {
	MOVLW	0xa7
	SUBWF	_onCount,W
	BTFSS	STATUS,0
	GOTO	_00131_DS_
;;genSkipc:3257: created from rifx:0x7ffc4ff75040
;;unsigned compare: left < lit(0x5=5), size=1
;	.line	36; "main.c"	if(debounce < DEBOUNCE_MAX) debounce++;
	MOVLW	0x05
;	.line	37; "main.c"	if(debounce == DEBOUNCE_MAX) {
	SUBWF	_debounce,W
	BTFSS	STATUS,0
	INCF	_debounce,F
	MOVF	_debounce,W
	XORLW	0x05
	BTFSS	STATUS,2
	GOTO	_00134_DS_
;	.line	38; "main.c"	if(configPin) LATA1 = 1;
	MOVLW	0x00
	IORWF	_configPin,W
	BTFSC	STATUS,2
	GOTO	_00119_DS_
	BSF	_LATAbits,1
	GOTO	_00134_DS_
_00119_DS_:
;	.line	39; "main.c"	else LATA1 = 0;
	BCF	_LATAbits,1
	GOTO	_00134_DS_
_00131_DS_:
;	.line	42; "main.c"	if(debounce > 0) debounce--;
	MOVLW	0x00
;	.line	43; "main.c"	if(debounce == 0) {
	IORWF	_debounce,W
	BTFSS	STATUS,2
	DECF	_debounce,F
	MOVLW	0x00
	IORWF	_debounce,W
	BTFSS	STATUS,2
	GOTO	_00134_DS_
;	.line	44; "main.c"	if(configPin) LATA1 = 0;
	MOVLW	0x00
	IORWF	_configPin,W
	BTFSC	STATUS,2
	GOTO	_00126_DS_
	BCF	_LATAbits,1
	GOTO	_00134_DS_
_00126_DS_:
;	.line	45; "main.c"	else LATA1 = 1;
	BSF	_LATAbits,1
	GOTO	_00134_DS_
;	.line	49; "main.c"	}
	RETURN	
; exit point of _main


;	code size estimation:
;	   77+    0 =    77 instructions (  154 byte)

	end
