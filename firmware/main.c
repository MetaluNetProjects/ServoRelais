#include <pic16regs.h>
#include <stdint.h> //Needed for uint16_t

static __code uint16_t __at (_CONFIG) configword = _FOSC_INTOSC & _BOREN_OFF & _WDTE_OFF & _CP_OFF;

unsigned char configPin;
unsigned int offCount;
unsigned char onCount;
unsigned char debounce;
#define PULSETHRES 166 // 1500us/9us since Fclk=4MHz -> Finstruction=1MHz
#define PULSEDEADBAND 5
#define DEBOUNCE_MAX 5
#define INACTIVE_TIME 2500 // 2500 * 15 = 37.5ms

#define RELAISON LATA1
#define SERVOPULSE RA0

int wait = 1;
void main()
{
	NOT_WPUEN = 0; // activate pullups
	ANSELA = 0; // enable digital input buffers
	OSCCONbits.IRCF = 0b101; // 4MHz

	TRISA0 = 1;

	RELAISON = 0;
	TRISA1 = 0;

	TRISA2 = 1;


	configPin = RA2;

	//RELAISON = 1;
	//while(wait++) { Nop(); Nop(); Nop(); Nop(); }

	while(1) {
		offCount = 0;
		onCount = 0;
		configPin = RA2;
		while(SERVOPULSE == 0) {
			if(offCount < INACTIVE_TIME) offCount++; // 15 instructions (see main.lst)
			//else RELAISON = 0; // switch off if inactive too long
		}
		while(SERVOPULSE != 0) {
			if(onCount < 255) onCount++; // 9 instructions (see main.lst)
		}
		if(onCount > (PULSETHRES + PULSEDEADBAND)) {
			if(debounce < DEBOUNCE_MAX) debounce++;
			if(debounce == DEBOUNCE_MAX) {
				if(configPin) RELAISON = 1;
				else RELAISON = 0;
			}
		} else if(onCount < (PULSETHRES - PULSEDEADBAND)) {
			if(debounce > 0) debounce--;
			if(debounce == 0) {
				if(configPin) RELAISON = 0;
				else RELAISON = 1;
			}
		}
	}
}

