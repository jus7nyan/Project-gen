SRC_PATH = src/
BLD_PATH = build/
OUT_PATH = $(BLD_PATH)out/


CC = g++


CPP_SRC = $(SRC_PATH)*.cpp

CPP_OBJ = *.o

OUT = {{{name}}}.so

CFLAGS = -c
# LIBFLAGS = -lfoo
SO_FLAGS = -shared

all:$(OUT_PATH)$(OUT)

$(OUT_PATH)$(OUT):$(CPP_OBJ)
	$(CC) $(SO_FLAGS) -o $@ $?
	mv *.o $(BLD_PATH)

$(CPP_OBJ): $(CPP_SRC)
	for file in $(CPP_SRC); do \
    $(CC) -fPIC $(CFLAGS) $$file ; \
	done #                      ^
# libflags ---------------------|

clean:
	rm -Rf $(BLD_PATH)*.o $(OUT_PATH)*