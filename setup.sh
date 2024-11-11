#!/bin/bash

# apt stuff
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt-get install -y make curl wget jq unzip vim zsh build-essential clang cmake gcc g++ git python3

# kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
sudo ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten /usr/local/bin
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
echo 'kitty.desktop' > ~/.config/xdg-terminals.list

# oh my zsh
# sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# miniconda
rm -f ./install-miniconda.sh; wget -N "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" -O ./install-miniconda.sh \
  && chmod +x install-miniconda.sh \
  && ./install-miniconda.sh

# gnome extentions
rm -f ./install-gnome-extensions.sh; wget -N "https://raw.githubusercontent.com/ToasterUwU/install-gnome-extensions/master/install-gnome-extensions.sh" -O ./install-gnome-extensions.sh \
  && chmod +x install-gnome-extensions.sh \
  && ./install-gnome-extensions.sh --enable --file gnome_extentions.txt

# dotfiles
ln -nfs ~/.dotfiles/gitignore ~/.gitignore_global
ln -nfs ~/.dotfiles/gitconfig ~/.gitconfig
ln -nfs ~/.dotfiles/vimrc ~/.vimrc
ln -nfs ~/.dotfiles/zshrc ~/.zshrc
ln -nfs ~/.dotfiles/oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme ~/.dotfiles/oh-my-zsh/themes/spaceship.zsh-theme
mkdir ~/.tmp
