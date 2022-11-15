#!/bin/bash
git submodule sync
git submodule update --init --recursive
go mod tidy
sudo apt-get update
sudo apt install python-is-python3

echo parameters.install_ffi : "$INSTALL_FFI"

if [ "$INSTALL_FFI" == "true" ]; then
    sudo apt install ocl-icd-opencl-dev libhwloc-dev
fi

make

echo '-->>>' branch:"$(git symbolic-ref --short HEAD)", commit:"$(git describe --always --match=NeVeRmAtCh --dirty)" '<<<--'
