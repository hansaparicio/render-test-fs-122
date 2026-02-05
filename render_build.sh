#!/usr/bin/env bash
# exit on error
set -o errexit

npm install
npm run build

pip install --upgrade pip
pip install pipenv

pipenv shell
pipenv install
pipenv run migrate
pipenv run upgrade
