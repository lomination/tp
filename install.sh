#!/usr/bin/env bash

install() {
    cd "afs/.bin/"
    curl "https://raw.githubusercontent.com/lomination/tp/refs/heads/main/tp" > tp
    chmod +x tp
    echo -e "\033[32mInstallation succeeded!\033[32m Make sure to restart you shell before trying."
}

cd
if [[ -e "afs/.bin" ]]; then
    if [[ -d "afs/.bin" ]]; then
        install
    else
        echo -e "\033[31mERROR\033[0m: $(pwd)/.bin already exists but is not a directory. Consider removing the file, using the manual installation or asking for help to @lomination on Discord."
        exit 1
    fi
else
    mkdir "afs/.bin"
    install
fi

if ! [[ $(cat afs/.confs/bashrc) == *'PATH=$PATH:$(pwd)/.bin'* ]]; then
    echo 'PATH=$PATH:$(pwd)/.bin' >> afs/.confs/bashrc
fi
