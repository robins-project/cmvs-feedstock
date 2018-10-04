#!/bin/sh
mkdir build && cd build

# build with c++98
export CXXFLAGS=$(echo $CXXFLAGS | sed "s/-std=c++17/-std=c++98/")

cmake -G "Ninja"                                    \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}                \
    -DCMAKE_BUILD_TYPE=Release                      \
    -DPMVS_USE_PNG=ON                               \
    -DPMVS_USE_TIFF=ON                              \
    ../program

ninja install
