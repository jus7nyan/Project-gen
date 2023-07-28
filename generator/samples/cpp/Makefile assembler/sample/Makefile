SRC_PATH = src/
BLD_PATH = build/
OUT_PATH = $(BLD_PATH)out/
ASM_PATH = $(SRC_PATH)asm/

CC = g++
ASM = nasm


ASM_SRC = $(ASM_PATH)func.asm
ASM_OBJ = $(ASM_SRC:.asm=.o)



CPP_SRC = $(SRC_PATH)lib.cpp $(SRC_PATH)main.cpp
CPP_OBJ = $(CPP_SRC:.cpp=.o)

OUT = {{{name}}}

CPPFLAGS = -no-pie
CFLAGS = -c
LIBFLAGS = -lX11
ASM_FLAGS = -f elf64

all: $(BLD_PATH)out/$(OUT)


$(BLD_PATH)out/$(OUT): $(CPP_OBJ) $(ASM_OBJ)
	$(CC) $(CPPFLAGS) $(CPP_OBJ) $(ASM_OBJ) -o $(OUT_PATH)$(OUT) $(LIBFLAGS)
	mv $(SRC_PATH)*.o $(ASM_PATH)*.o $(BLD_PATH)
	chmod +x $(OUT_PATH)$(OUT)

$(CPP_OBJ): $(CPP_SRC)
	$(CC) $(CFLAGS) $(CPP_SRC) $(LIBFLAGS)
	mv *.o $(SRC_PATH)


$(ASM_OBJ): $(ASM_SRC)
	for asm in $(ASM_SRC) ; do \
		$(ASM) $(ASM_FLAGS) $$asm ; \
	done


clean: $(BLD_PATH)*.o $(OUT_PATH)*
	rm -Rf $(BLD_PATH)*.o $(OUT_PATH)*