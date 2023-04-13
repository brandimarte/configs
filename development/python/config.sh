#!/bin/bash

set -e

python_version=3.10.6
base_path=${HOME}/local/opt/python
install_path=${base_path}/miniforge3/${python_version}

wget https://github.com/conda-forge/miniforge/releases/download/22.9.0-1/Miniforge3-22.9.0-1-Linux-x86_64.sh

bash Miniforge3-22.9.0-1-Linux-x86_64.sh -b -p "${install_path}"

module load python

conda config --set channel_priority flexible

conda install -k -y python=${python_version}
conda install autopep8 conda=22.9.0 cppcheck cpplint isort jupyter libjpeg-turbo=2.1.4 libpng matplotlib numpy opencv pillow pycodestyle pylint pytest pytorch shellcheck torchvision visdom
pip install compdb thop vcd
conda clean -y -a

exit
