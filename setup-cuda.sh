#!/bin/bash
git submodule init
git submodule update

python3 -m venv venv
source ./venv/bin/activate
python3 -m pip install --upgrade pip
# CUDA
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
python3 -m pip install -r ./dlas/requirements.txt
python3 -m pip install -r ./tortoise-tts/requirements.txt
python3 -m pip install -r ./requirements.txt
python3 -m pip install -e ./tortoise-tts/
deactivate
