#!/usr/bin/env bash

virtualenv venv --distribute
source venv/bin/activate
pip install -r ${HOME}/provision/python/requirements.txt
