#!/usr/bin/env bash

cd

if ! [[ -e "afs/.bin" ]]; then
    mkdir "afs/.bin"
fi

if ! [[ -d "afs/.bin" ]]; then
    echo -e "\033[31mERROR\033[0m: ~/afs/.bin already exists but is not a directory. Consider removing the file, using the manual installation or asking for help to @lomination on Discord."
    exit 1
fi

curl "https://raw.githubusercontent.com/lomination/tp/refs/heads/main/tp" > 'afs/.bin/tp'
chmod +x 'afs/.bin/tp'

if ! [[ $(cat .bashrc) == *"PATH=\$PATH:$(pwd)/.bin"* ]]; then
    echo -e "\n# Add the tp command\nPATH=\$PATH:$(pwd)/.bin\n" >> .bashrc
fi

echo -e "\033[32mInstallation succeeded!\033[0m Make sure to restart you shell before trying."
