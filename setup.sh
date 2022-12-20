#!/bin/bash

# apt stuff
sudo add-apt-repository ppa:mattrose/terminator
sudo apt-get update

sudo apt-get install -y terminator make chrome-gnome-shell curl wget jq unzip vim zsh

# oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# gnome extentions
wget -N -q "https://raw.githubusercontent.com/cyfrost/install-gnome-extensions/master/install-gnome-extensions.sh" -O ./install-gnome-extensions.sh \
  && chmod +x install-gnome-extensions.sh \
  && ./install-gnome-extensions.sh --enable --file gnome_extentions.txt

# snaps
sudo snap install clion --classic
sudo snap install goland --classic
sudo snap install slack
sudo snap install spotify
sudo snap install pycharm-professional  --classic

# dotfiles
ln -nfs ~/.dotfiles/gitignore ~/.gitignore_global
ln -nfs ~/.dotfiles/gitconfig ~/.gitconfig
ln -nfs ~/.dotfiles/vimrc ~/.vimrc
ln -nfs ~/.dotfiles/zshrc ~/.zshrc
ln -nfs ~/.dotfiles/oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme ~/.dotfiles/oh-my-zsh/themes/spaceship.zsh-theme
mkdir ~/.tmp
