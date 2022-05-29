#!/bin/bash
git submodule update --init --recursive
mkdir -p build && cd build
cmake .. -DTRT_LIB_DIR=$TRT_LIBPATH/lib/ -DTRT_INC_DIR=$TRT_LIBPATH/include -DTRT_OUT_DIR=`pwd`/out
make -j8
