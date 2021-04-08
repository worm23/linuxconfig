#!/bin/sh
mkdir ~/.vim
mkdir ~/.vim/colors
cd ~/.vim/colors
wget https://raw.githubusercontent.com/worm23/linuxconfig/main/vimrc.local
wget https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
mv vimrc.local /etc/vim/vimrc.local
