#!/bin/bash
set -o errexit
set -o nounset

setup_folders (){
    if [ -d ~/pentest ]; then
        mkdir pentest
        cd pentest
        mkdir android
        mkdir database
        mkdir forensics
        mkdir information
        mkdir web
        mkdir wireless
        cd ~
    fi
    if [ -d ~/src ]; then
    fi
}

add_architecture (){
    sudo dpkg --add-architecture i386
    sudo apt-get update
    sudo apt-get upgrade
}

install_stuff (){
    # Install stuff
    STUFF_TO_INSTALL="curl nmap tmux scalpel binwalk tor git"
    sudo apt-get update
    sudo apt-get install $STUFF_TO_INSTALL

    # Repositories
    
    #git clone https://github.com/rapid7/metasploit-framework.git
}

setup_stuff (){
    # Disable services on startup
    # Github config
    git config --global user.name "BBerastegui"
    git config --global user.email "BBerastegui@users.noreply.github.com"
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

config_files
setup_folders
add_architecture
install_stuff
setup_stuff
