#!/bin/bash

cd /home/sur/Project #updated the path with path of your project directory
rm -r build/
mkdir build
cd build
cmake ..
make
cd build
./executable ../test.png #<give the path to image here>
