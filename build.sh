#!/bin/bash
git submodule update --init --recursive
# mkdir -p build && cd build
# cmake .. -DTRT_LIB_DIR=$TRT_LIBPATH/lib/ -DTRT_INC_DIR=$TRT_LIBPATH/include -DTRT_OUT_DIR=`pwd`/out
# make -j8

# tx2 cuda-10.2
# 解决TensorRT编译时protobuf模块下载失败导致的错误
# https://blog.csdn.net/macanv/article/details/104458355
mkdir -p build && cd build
cmake .. -DTRT_LIB_DIR=$TRT_LIBPATH -DTRT_OUT_DIR=`pwd`/out -DTRT_PLATFORM_ID=aarch64 -DCUDA_VERSION=10.2
CC=/usr/bin/gcc make -j4
