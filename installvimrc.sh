#!/bin/sh
wget https://raw.githubusercontent.com/worm23/linuxconfig/main/vimrc.local
chown root:root vimrc.local
chmod 644 vimrc.local
mv -f vimrc.local /etc/vim/vimrc.local
# there needs to be a .vimrc file, othervise other defaults are used that override vimrc.local
touch ~/.vimrc

wget https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
chown root:root solarized.vim
chmod 644 solarized.vim
VIMRUNTIME=`vim -e -T dumb --cmd 'exe "set t_cm=\<C-M>"|echo $VIMRUNTIME|quit' | tr -d '\015' `
mv -f solarized.vim $VIMRUNTIME/colors/

