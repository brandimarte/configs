#!/bin/bash

set -e

module purge
module load python

version=15.0.7
gcc_version=$(gcc -dumpversion)
python_version=$(python --version | awk '{print $2}')
base_path=/home/pedro/local/opt/llvm
install_path=${base_path}/${version}/g${gcc_version}-p${python_version}

mkdir -p "${install_path}"

#git clone --depth=1 https://github.com/llvm/llvm-project.git
#cd llvm-project || exit

wget https://github.com/llvm/llvm-project/releases/download/llvmorg-${version}/llvm-project-${version}.src.tar.xz
tar -xvf llvm-project-${version}.src.tar.xz
cd llvm-project-${version}.src || exit

mkdir build && cd build || exit

# config with clang and mlir support
cmake -G "Unix Makefiles" ../llvm -DCMAKE_INSTALL_PREFIX:PATH="${install_path}" -DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra;mlir' -DLLVM_BUILD_EXAMPLES=ON -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=ON -DMLIR_INCLUDE_INTEGRATION_TESTS=ON

make -j6
make install
cd ../
rm -rf build

