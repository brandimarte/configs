#!/bin/bash

module use i${HOME}/local/modules
module load python
module load atlas800

mkdir -p "$(pwd)"/../build
cd "$(pwd)"/.. || exit

bash build.sh -e ascend -j128

mkdir -p build/clang-tidy
compdb -p build/ list > build/clang-tidy/compile_commands.json

