cmake_minimum_required(VERSION 2.8)

project({{{name}}} CXX)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY out/)
add_executable({{{name}}} src/lib.cpp src/main.cpp)