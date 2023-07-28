SRC_PATH = src/
BLD_PATH = build/
OUT_PATH = $(BLD_PATH)out/


CC = g++


CPP_SRC = $(SRC_PATH)*.cpp

CPP_OBJ = *.o

OUT = {{{name}}}

CFLAGS = -c
LIBFLAGS = -lX11

all: $(BLD_PATH)/out/$(OUT)

$(BLD_PATH)/out/$(OUT): $(CPP_OBJ)
	$(CC) $(CPP_OBJ) -o $(OUT_PATH)$(OUT) $(LIBFLAGS)
	mv *.o $(BLD_PATH)
	chmod +x $(OUT_PATH)$(OUT)

$(CPP_OBJ): $(CPP_SRC)
	$(CC) $(CFLAGS) $(CPP_SRC) $(LIBFLAGS)


clean: $(BLD_PATH)*.o $(OUT_PATH)*
	rm -Rf $(BLD_PATH)*.o $(OUT_PATH)*