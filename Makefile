CC = gcc
LD = gcc

EXEC = wm.exe
DLL = wm_dll.dll

# Boiler plate
CFLAGS  =
LDFLAGS =

all: $(DLL) $(EXEC)

$(EXEC): wm.c tiling.c error.c
	$(CC) wm.c tiling.c error.c -luser32 -o $(EXEC)

$(DLL): wm_dll.o
	$(LD) -shared wm_dll.o -luser32 -o $(DLL) -Wl,--out-implib,libwm_dll.a

wm_dll.o: wm_dll.c
	$(CC) -c wm_dll.c -o wm_dll.o

clean:
	rm *.o $(DLL) $(EXEC) libwm_dll.a
