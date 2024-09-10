CROSS_COMPILE	?= 

CC		:= $(CROSS_COMPILE)gcc
CFLAGS		:= -W -Wall -g
LDFLAGS		:= -g -ljpeg

all: uvc-gadget

uvc-gadget: uvc-gadget.o
	$(CC) $(LDFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f *.o
	rm -f uvc-gadget
