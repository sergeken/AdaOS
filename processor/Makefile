#all:	interrupts.o	proc-support.o
all:	interrupts.o

interrupts.s:	create_int_iface.sh
	./create_int_iface.sh

clean:
	rm -f interrupts.s
	rm -f generated_int*
