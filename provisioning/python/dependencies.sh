#!/usr/bin/env bash

virtualenv venv --distribute
ln -s /vagrant/venv venv

source venv/bin/activate
pip install -r ${HOME}/provision/python/requirements.txt
