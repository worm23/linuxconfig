#!/bin/sh
mkdir ~/.vim/colors
cd ~/.vim/colors
wget https://github.com/worm23/linuxconfig/blob/main/vimrc.local
wget https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
mv vimrc.local /etc/vim/vimrc.local
