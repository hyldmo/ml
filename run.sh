#!/bin/bash

set -e
pipenv install --python 3.9  --site-packages
pipenv uninstall notebook
pipenv install notebook

pipenv run jupyter notebook --NotebookApp.token='' --NotebookApp.password=''
