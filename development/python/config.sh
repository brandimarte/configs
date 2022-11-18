#!/bin/bash

set -e

python_version=3.10.6
base_path=${HOME}/local/opt/python
install_path=${base_path}/miniforge3/${python_version}

wget https://github.com/conda-forge/miniforge/releases/download/22.9.0-1/Miniforge3-22.9.0-1-Linux-x86_64.sh

bash Miniforge3-22.9.0-1-Linux-x86_64.sh -b -p "${install_path}"

module load python

conda install -k -y python=${python_version}
conda install pylint pycodestyle autopep8 cpplint cppcheck shellcheck
pip install compdb
conda clean -y -a

exit
