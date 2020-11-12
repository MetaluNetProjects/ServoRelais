SDCC_HOME = ~/Téléchargements/sdcc
SDCC_SHARE = $(SDCC_HOME)/bin/share/sdcc
SDCC = $(SDCC_HOME)/bin/sdcc
CC=$(SDCC)
PK2CMD= pk2cmd
SHELL=/bin/bash

CHIP = 10f322
#CHIP = 12f675
BOARD = ServoRelais
SRCS = main.c

OBJS =	$(SRCS:%.c=%.o)
ASMS =	$(SRCS:%.c=%.asm)
LSTS =	$(SRCS:%.c=%.lst)
CODS =  $(SRCS:%.c=%.cod)

#--model-small --vc --denable-peeps --optimize-goto --optimize-cmp --optimize-df --obanksel=9 --opt-code-size --fommit-frame-pointer --std-sdcc99
# --vc --opt-code-speed --fomit-frame-pointer 
CFLAGS = --use-non-free --opt-code-size -I. -I$(SDCC_SHARE)/include/pic14 -I$(SDCC_SHARE)/non-free/include/pic14 -mpic14 -p$(CHIP) --stack-size8 --stack-loc0x40

LIBS = libsdcc.lib

HEXFILE= $(BOARD).hex

all: $(HEXFILE)
	#+make clean


$(OBJS): %.o: %.c  Makefile
	@echo ---- Compile $@ ----
	$(CC) $(CFLAGS) $(MACROS) -c $< -o $@

$(HEXFILE): $(OBJS) Makefile
	@echo ---- Linking and building $@ ----
	$(CC) $(CFLAGS) $(MACROS) -L $(SDCC_SHARE)/lib/pic14  -L $(SDCC_SHARE)/non-free/lib/pic14 -o $(HEXFILE) $(OBJS) $(LIBS) -Wl"-m"

disass:
	$(DIS) -p p$(CHIP) $(HEXFILE) > $(PROJ).lis

progpk2:
	$(PK2CMD) -P -M -F$(HEXFILE)

clean:
	rm -f *.o *.asm *.lst *.cod



