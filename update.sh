#!/bin/bash
git pull
git submodule update

python3 -m venv venv
source ./venv/bin/activate

python3 -m pip install --upgrade pip
python3 -m pip install -r ./dlas/requirements.txt
python3 -m pip install -r ./tortoise-tts/requirements.txt
python3 -m pip install -e ./tortoise-tts 
python3 -m pip install -r ./requirements.txt


deactivate