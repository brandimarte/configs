#!/bin/bash

set -e

gtest_version=1.15.2
gcc_version=14.2.1
base_path=${HOME}/local/opt/
install_path=${base_path}/googletest/${gtest_version}/${gcc_version}

git clone https://github.com/google/googletest.git -b v${gtest_version}
cd googletest || exit
mkdir build && cd build || exit

cmake .. -DCMAKE_INSTALL_PREFIX:PATH="${install_path}" -DBUILD_GMOCK=OFF

make
make install
cd ../
rm -rf build

