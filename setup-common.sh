#!/bin/bash

# copy dotfiles
cat .bash_profile >> ~/.bash_profile
mkdir ~/.atom || echo .atom already exists
cat .atom/config.cson >> ~/.atom
cat .nvmrc >> ~/.nvmrc
cat .vimrc >> ~/.vimrc

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
