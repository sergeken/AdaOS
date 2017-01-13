ADAMAIN=b~main.o
BOOT= boot/multiboot.o 
PROCESSOR= processor/interrupts.o

INCLUDES= -I. -Iprocessor -Idevice -Iboot -Idemo
GNATFLAGS= -O -i -gnatp -gnatf -gnatX -gnatwcilopru -gnatyacefhiklnoprst 

ADAOS= AdaOS


ADAOS= AdaOS

fda: AdaOS
	echo Please do a su -c ./install-it.sh
	su -c ./install-it.sh

$(ADAOS): $(BOOT) $(PROCESSOR) $(ADAMAIN)
	ld -Ttext 100000 -Bstatic -o $@ $+ `gnatbind -t -O $(INCLUDES) boot/main` -L/usr/lib/gcc-lib/i486-linux/2.8.1/adalib -lgnat -lc

clean:
	find . -name '*.o' -o -name '*.ali' -o -name '*~' | xargs rm -f
	rm -f b~main.*
	rm -f $(ADAOS)
	rm -f bochsout.txt log.txt

$(ADAMAIN): make_ada_main
.PHONY: make_ada_main
make_ada_main:
	gnatmake -c $(GNATFLAGS) $(INCLUDES) boot/main
	gnatbind -t $(INCLUDES) boot/main
	gnatmake -c b~main

$(BOOT): make_boot
.PHONY: make_boot
make_boot:
	cd boot; make; cd -

$(PROCESSOR): make_processor
.PHONY: make_processor
make_processor:
	cd processor; make; cd -
