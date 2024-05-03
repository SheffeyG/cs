#!/bin/bash

# cc -o main main.c -I raylib-5.0_linux_amd64/include -L raylib-5.0_linux_amd64/lib -l:libraylib.a -lm

if [ ! -d "./build" ]; then
    mkdir build
fi

cd ./build

cmake ..
make 
