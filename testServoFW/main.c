/*********************************************************************
 *               servo example for Versa1.0
 *	Output RC servo waveforms to K1 (channel 0)
 *********************************************************************/
#define BOARD Versa1
#include <fruit.h>
#include <servo.h>

//----------- Setup ----------------
void setup(void) {	
	fruitInit();			
	servoInit();        // init servo module
	servoSelect(0,K1); // assign connector K11 to servo channel 0
}

// ---------- Main loop ------------
void loop() {
	fraiseService();// listen to Fraise events
	servoService();	// servo management routine
}

// ---------- Interrupts ------------
void highInterrupts()
{
	servoHighInterrupt();
}

// ---------- Receiving ------------
void fraiseReceive() // receive raw bytes
{
	unsigned char c=fraiseGetChar();
	if(c==20) servoReceive(); // if first byte is 20, then call servo receive function.
}

