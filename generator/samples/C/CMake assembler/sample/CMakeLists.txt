cmake_minimum_required(VERSION 2.8)

project({{{name}}} C ASM_NASM)
enable_language(ASM_NASM)
string(APPEND CMAKE_ASM_NASM_FLAGS "-felf64")
string(APPEND CMAKE_C_FLAGS "-no-pie")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY out/)
add_executable({{{name}}} src/asm/funcs.asm src/libio.c src/main.c)