#!/bin/bash 
# install homebrew
type 'brew' 2>&1 >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install curl vim fish powerline-go httpie exa bat

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -e -c ":PlugInstall" -c ":qall"
