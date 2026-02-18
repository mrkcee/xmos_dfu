# Common flags
CFLAGS = -g
CC = g++

# Linux target
linux: xmosdfu.cpp
	$(CC) $(CFLAGS) -o xmosdfu xmosdfu.cpp -I. `pkg-config --libs libusb-1.0`

# macOS targets (both do the same thing, maintained for compatibility)
mac: xmosdfu.cpp
	$(CC) $(CFLAGS) -o xmosdfu xmosdfu.cpp -I. -IOSX $(shell brew --prefix libusb)/lib/libusb-1.0.0.dylib

mac-m1: mac

# Windows target (MSYS2/MinGW-w64)
windows: xmosdfu.cpp
	$(CC) $(CFLAGS) -o xmosdfu.exe xmosdfu.cpp -I. `pkg-config --cflags --libs libusb-1.0`

clean:
	rm -f xmosdfu
