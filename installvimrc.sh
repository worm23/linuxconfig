#!/bin/sh
#mkdir ~/.vim
#mkdir ~/.vim/colors
#cd ~/.vim/colors
wget https://raw.githubusercontent.com/worm23/linuxconfig/main/vimrc.local
chown root:root vimrc.local
chmod 644 vimrc.local
mv vimrc.local /etc/vim/vimrc.local

wget https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
chown root:root solarized.vim
chmod 644 solarized.vim
mv solarized.vim /usr/share/vim/vim81/colors/

