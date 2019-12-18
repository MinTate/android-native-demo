#!/bin/bash
rm -rf CMakeCache.txt
rm -rf CMakeFiles
rm -rf cmake_install.cmake
rm -rf Makefile
rm -rf CTestTestfile.cmake

#修改为自己的NDK目录
ANDROID_NDK_HOME="/Users/min/Library/Android/sdk/ndk-bundle"

cmake -B build/ -DDEBUG=NO -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake \
        -DANDROID_NDK=${ANDROID_NDK_HOME} \
        -DANDROID_ABI=arm64-v8a \
        -DANDROID_TOOLCHAIN=clang \
        -DANDROID_PLATFORM=android-26 \
        -DANDROID_STL=c++_static \
        .

cd build
make

rm -rf CMakeCache.txt
rm -rf CMakeFiles
rm -rf cmake_install.cmake
rm -rf Makefile
rm -rf CTestTestfile.cmake
