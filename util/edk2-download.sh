#!/bin/bash
set -e

cd /usr/local/src
git clone --recursive https://github.com/tianocore/edk2
cd edk2 && make -C BaseTools

