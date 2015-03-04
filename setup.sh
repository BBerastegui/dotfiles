#!/bin/bash
set -o errexit
set -o nounset

add_architecture (){
    sudo dpkg --add-architecture i386
    sudo apt-get update
    sudo apt-get upgrade
}

install_stuff (){
    # Install stuff
    STUFF_TO_INSTALL="curl nmap tmux scalpel binwalk"
    sudo apt-get update
    sudo apt-get install $STUFF_TO_INSTALL
}

config_files (){
    # Backup the .bashrc file
    cp ~/.bashrc ~/.bashrc.old
    # Append the bashrc to the current .bashrc
    cat ./bashrc >> ~/.bashrc
    # Source .bashrc
    source ~/.bashrc

    # Backup the .vimrc
    mv ~/.vimrc ~/.vimrc.old
    # Create link to the "good" .vimrc
    ln -s ~/.vimrc .vimrc

    # Backup the .tmux.conf
    mv ~/.tmux.conf ~/.tmux.conf.old
    # Create link to the "good" .tmux.conf
    ln -s ~/.tmux.conf .tmux.conf

    # Install patogen
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
        curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

add_architecture
install_stuff
config_files
