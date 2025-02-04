#!/bin/bash

if [[ "$OSTYPE" != "darwin"* ]]; then
    exit 1
fi

# curl https://raw.githubusercontent.com/KDE/craft/master/setup/CraftBootstrap.py -o konsole_setup.py
# Forked to set arm64 as the default architecture from x86_64
curl https://raw.githubusercontent.com/vorpal56/craft/master/setup/CraftBootstrap.py -o ~/konsole_setup.py
python3 ~/konsole_setup.py --use-defaults --prefix ~/CraftRoot
source ~/CraftRoot/craft/craftenv.sh
craft konsole
rm ~/konsole_setup.py
mv -r ~/CraftRoot/Applications/KDE/konsole.app /Applications/

# TODO: figure out the path here
cp -r dotfiles/konsole/ ~/Library/Application\ Support/konsole/