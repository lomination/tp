#!/bin/sh

install() {
    cd "afs/.bin/"
    curl "https://raw.githubusercontent.com/lomination/tp/refs/heads/main/tp" > tp
    chmod +x tp
    printf "\033[32mInstallation succeeded!\033[32m Make sure to restart you shell before trying.\n"
}

cd
if [[ -e "afs/.bin" ]]; then
    if [[ -d "afs/.bin" ]]; then
        install
    else
        printf "\033[31mERROR\033[0m: $(pwd)/.bin already exists but is not a directory. Consider removing the file, using the manual installation or asking for help to @lomination on Discord.\n"
        exit 1
    fi
else
    mkdir "afs/.bin"
    install
fi

if ! [[ $(cat afs/.confs/bashrc) == *'PATH=$PATH:$(pwd)/.bin'* ]]; then
    echo 'PATH=$PATH:$(pwd)/.bin' >> afs/.confs/bashrc
fi
