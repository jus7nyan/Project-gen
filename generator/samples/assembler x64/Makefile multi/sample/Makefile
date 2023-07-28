SRC_PATH = src/
BLD_PATH = build/
OUT_PATH = $(BLD_PATH)out/


ASM = nasm
CC = g++


ASM_SRC = $(SRC_PATH)main.asm $(SRC_PATH)funcs.asm
ASM_OBJ = $(ASM_SRC:.asm=.o)


OUT = {{{name}}}

ASM_FLAGS = -f elf64
CCFLAGS = -no-pie


all: $(OUT_PATH)$(OUT)

$(OUT_PATH)$(OUT): $(ASM_OBJ)
	$(CC) $(CCFLAGS) $(ASM_OBJ) -o $(OUT_PATH)$(OUT)
	mv $(SRC_PATH)*.o $(BLD_PATH)

$(ASM_OBJ): $(ASM_SRC)
	for asm in $(ASM_SRC) ; do \
		$(ASM) $(ASM_FLAGS) $$asm ; \
	done

	


clean:
	rm -Rf $(BLD_PATH)*.o $(OUT_PATH)*


install: /usr/local/bin/$(OUT)

/usr/local/bin/$(OUT): $(OUT_PATH)$(OUT)
	cp $(OUT_PATH)$(OUT) /usr/local/bin/

uninstall:
	rm -Rf /usr/local/bin/$(OUT)