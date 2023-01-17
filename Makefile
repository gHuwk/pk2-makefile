DEVICE = $ -ppic16f887
EEPROM = -GE00-1F
FIRMWARE = -fsample.hex
CMD = pk2cmd

program:
	$(CMD) $(DEVICE) -T -A5 -R -J -Z -M $(FIRMWARE) 

run:
	$(CMD) $(DEVICE) -R -T

stop:
	$(CMD) $(DEVICE) -P

help:
	$(CMD) -?H

version:
	$(CMD) -?V

supported:
	$(CMD) -?P

autodetect:
	$(CMD) -P -I

checkblank:
	$(CMD) -O -C

power-and-release:
	$(CMD) -P -A5 -T -R

readhex:
	$(CMD) $(DEVICE) -A5 -T -T -J -GFfrompic.hex

readeeprom:
	$(CMD) $(DEVICE) -R -J $(EEPROM)

pathinstall:
	export PATH=/usr/share/pk2:$(PATH)
