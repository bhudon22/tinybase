CC=gcc
CFLAGS=-s -Qn -Os -nostdlib -ffunction-sections -fdata-sections -fno-unwind-tables -fno-asynchronous-unwind-tables -Wl,--gc-sections -Wl,--build-id=none 
DEPS= boot.s base.c
LINKER_TAPE=x86_64.ld
OUT=base.bin
default:
	$(CC) -T $(LINKER_TAPE) $(DEPS) $(CFLAGS) -o $(OUT)
	./sstrip/sstrip base.bin
