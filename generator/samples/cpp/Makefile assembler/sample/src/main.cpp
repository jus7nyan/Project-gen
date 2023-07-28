#include <string.h>

#include "lib.hpp"
extern "C" void say_text(char text[], int len);



int main(int argc, char** argv) {
    char *text = "hello world!\n";
    int len = strlen(text);
    say_text(text, len);
    lib();

}
