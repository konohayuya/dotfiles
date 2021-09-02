#!/bin/bash 
# apt update etc..
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y  && sudo apt autoremove -y

apt install -y curl vim fish httpie exa rust-bat hexyl

curl -fLo powerline-go \
  "https://github.com/justjanne/powerline-go/releases/download/v1.21.0/powerline-go-linux-amd64" && \
  chmod 555 ./powerline-go 
  sudo mv ./powerline-go /usr/local/bin

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c ":PlugInstall"
