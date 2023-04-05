#!/bin/bash

set -e

python_version=3.10.6
base_path=${HOME}/local/opt/python
install_path=${base_path}/miniforge3/${python_version}-ql

wget https://github.com/conda-forge/miniforge/releases/download/22.9.0-1/Miniforge3-22.9.0-1-Linux-x86_64.sh

bash Miniforge3-22.9.0-1-Linux-x86_64.sh -b -p "${install_path}"

module load python

conda install -k -y python=${python_version}
conda install aiofile aiohttp autopep8 azure-core azure-identity azure-storage-blob caio cirq-core cirq-ionq contourpy cppcheck cpplint deprecated duet-python fonttools frozenlist h5py isodate isort jupyter kiwisolver libjpeg-turbo=2.1.4 libpng markdown matplotlib mock msal msrest multidict networkx oauthlib pandas pennylane pillow protobuf'<4.0' py pycodestyle pydot pylatexenc pylint pyparsing pytest pytest-asyncio python-markdown-math pytz qiskit-finance qiskit-ibmq-provider qiskit-ignis qiskit-machine-learning qiskit-optimization qiskit-terra retry rustworkx seaborn shellcheck yarl
conda install -c microsoft notebook qsharp
pip install asyncmock compdb
pip install qiskit[visualization]
pip install qiskit[nature]
pip install --upgrade azure-quantum[qiskit]

conda clean -y -a

exit
