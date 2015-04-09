#!/usr/bin/env bash

source venv/bin/activate

# nodeenv -p --verbose --requirement=~/provision/node/requirements.txt --jobs=4 venv
nodeenv -p --verbose --requirement=${HOME}/provision/node/requirements.txt --jobs=1 venv
