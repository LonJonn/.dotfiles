#!/bin/zsh

# Link Python3.9 Interpretor
[[ ! -f /usr/bin/python ]] && sudo ln -s $(which python3) /usr/bin/python

# Create Z file
touch ~/.z
