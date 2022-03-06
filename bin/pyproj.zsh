#!/usr/local/bin/zsh
cd ~/Code/"$1" || exit
source .venv/bin/activate || exit
python main.py; deactivate