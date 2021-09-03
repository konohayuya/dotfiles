#!/bin/bash 
# apt update etc..
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y  && sudo apt autoremove -y

sudo apt install -y curl vim fish httpie bat hexyl

curl -fLo exa.zip \
  "https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-x86_64-v0.10.0.zip" && \
  unzip -d ./exa exa.zip && \
  sudo mv ./exa/bin/exa /usr/local/bin/ && \
  sudo mv ./exa/man/exa.1 /usr/share/man/man1/ && \
  sudo mv ./exa/man/exa_colors.5 /usr/share/man/man5/ && \
  sudo mv ./exa/completions/exa.fish /usr/share/fish/vendor_completions.d/ && \
  rm -rf ./exa exa.zip


curl -fLo powerline-go \
  "https://github.com/justjanne/powerline-go/releases/download/v1.21.0/powerline-go-linux-amd64" && \
  chmod 555 ./powerline-go 
  sudo mv ./powerline-go /usr/local/bin

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -e -c ":PlugInstall" -c "qall"
