set VM_PATH=C:\Program Files\Mesen.exe
set CA65_INC=C:\Program Files\cc65-snapshot-win32\include
set CC65_INC=C:\Program Files\cc65-snapshot-win32\include
set LD65_CFG=C:\Program Files\cc65-snapshot-win32\cfg
set LD65_LIB=C:\Program Files\cc65-snapshot-win32\lib
set LD65_OBJ=C:\Program Files\cc65-snapshot-win32\obj
set CC65_HOME=C:\Program Files\cc65-snapshot-win32
set LINKER_SCRIPT=src/project.cfg

cc65 -t nes -o dist/main.s src/main.c
ca65 -t nes dist/main.s
ld65 -t nes dist/main.o nes.lib atmos.lib -o dist/main.nes
 