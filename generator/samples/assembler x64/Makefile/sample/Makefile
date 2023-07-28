SRC_PATH = src/
BLD_PATH = build/
OUT_PATH = $(BLD_PATH)out/


ASM = nasm
CC = g++


ASM_SRC = $(SRC_PATH)main.asm
ASM_OBJ = main.o

OUT = {{{name}}}

ASM_FLAGS = -f elf64
CCFLAGS = -no-pie

all: $(OUT_PATH)$(OUT)

$(OUT_PATH)$(OUT): $(ASM_OBJ)
	$(CC) $(CCFLAGS) $(ASM_OBJ) -o $(OUT_PATH)$(OUT)
	mv *.o $(BLD_PATH)

$(ASM_OBJ): $(ASM_SRC)
	$(ASM) $(ASM_FLAGS) $(ASM_SRC) -o $(ASM_OBJ)

clean:
	rm -Rf $(BLD_PATH)*.o $(OUT_PATH)*

install: /usr/local/bin/$(OUT)

/usr/local/bin/$(OUT): $(OUT_PATH)$(OUT)
	cp $(OUT_PATH)$(OUT) /usr/local/bin/

uninstall:
	rm -Rf /usr/local/bin/$(OUT)