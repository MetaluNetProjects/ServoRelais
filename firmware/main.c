#include <pic16regs.h>
#include <stdint.h> //Needed for uint16_t

static __code uint16_t __at (_CONFIG) configword = _FOSC_INTOSC & _BOREN_OFF & _WDTE_OFF & _CP_OFF;

unsigned char configPin;
unsigned int offCount;
unsigned char onCount;
unsigned char debounce;
#define PULSETHRES 166 // 1500us/9us since Fclk=4MHz -> Finstruction=1MHz
#define DEBOUNCE_MAX 5
#define INACTIVE_TIME 2500 // 2500 * 15 = 37.5ms

void main()
{
	TRISA0 = 1;
	LATA1 = 0;
	TRISA1 = 0;
	TRISA2 = 1;

	OSCCONbits.IRCF = 0b101; // 4MHz

	configPin = RA2;

	while(1) {
		offCount = 0;
		while(!RA0) {
			if(offCount < INACTIVE_TIME) offCount++; // 15 instructions (see main.lst)
			else LATA1 = 0; // switch off if inactive too long
		}
		onCount = 0;
		while(RA0) {
			if(onCount < 255) onCount++; // 9 instructions (see main.lst)
		}
		if(onCount > PULSETHRES) {
			if(debounce < DEBOUNCE_MAX) debounce++;
			if(debounce == DEBOUNCE_MAX) {
				if(configPin) LATA1 = 1;
				else LATA1 = 0;
			}
		} else {
			if(debounce > 0) debounce--;
			if(debounce == 0) {
				if(configPin) LATA1 = 0;
				else LATA1 = 1;
			}
		}
	}
}

