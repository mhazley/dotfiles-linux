#!/bin/bash

sudo add-apt-repository ppa:mattrose/terminator
sudo apt-get update

sudo apt-get install -y terminator make chrome-gnome-shell curl wget jq unzip

wget -N -q "https://raw.githubusercontent.com/cyfrost/install-gnome-extensions/master/install-gnome-extensions.sh" -O ./install-gnome-extensions.sh \
  && chmod +x install-gnome-extensions.sh \
  && ./install-gnome-extensions.sh --enable --file gnome_extentions.txt

sudo snap install clion goland slack spotify pycharm-professional  --classic

ln -nfs ~/.dotfiles/gitignore ~/.gitignore_global
ln -nfs ~/.dotfiles/gitconfig ~/.gitconfig
ln -nfs ~/.dotfiles/vimrc ~/.vimrc
ln -nfs ~/.dotfiles/zshrc ~/.zshrc
mkdir ~/.tmp
