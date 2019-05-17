#!/bin/bash
cmake -Bbuild -H.
cd build
make
../sample.out