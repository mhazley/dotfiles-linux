#!/bin/bash

# apt stuff
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt-get install -y make curl wget jq unzip vim zsh build-essential clang cmake gcc g++ git python3

# oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# miniconda
rm -f ./install-miniconda.sh; wget -N "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" -O ./install-miniconda.sh \
  && chmod +x install-miniconda.sh \
  && ./install-miniconda.sh

# dotfiles
ln -nfs ~/.dotfiles/gitignore ~/.gitignore_global
ln -nfs ~/.dotfiles/gitconfig ~/.gitconfig
ln -nfs ~/.dotfiles/vimrc ~/.vimrc
ln -nfs ~/.dotfiles/zshrc ~/.zshrc
ln -nfs ~/.dotfiles/oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/themes/spaceship.zsh-theme
mkdir ~/.tmp
