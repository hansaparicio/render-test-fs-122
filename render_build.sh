#!/usr/bin/env bash
# exit on error
set -o errexit

npm install
npm run build

pip install --upgrade pip
pip install pipenv
pip install -r requirements.txt

pipenv install
pipenv run migrate
pipenv run upgrade
