#!/bin/bash

# there needs to be a .vimrc file, othervise other defaults are used that override vimrc.local
touch ~/.vimrc

if [ "$EUID" -ne 0 ]
then
	echo "Please run also as root!"
else
	# FYI github caches files for 5 minutes, it's not possible to work around that cache
	wget -nv https://raw.githubusercontent.com/worm23/linuxconfig/main/vimrc.local
	chown root:root vimrc.local
	chmod 644 vimrc.local
	mv -f vimrc.local /etc/vim/vimrc.local

	wget -nv https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
	chown root:root solarized.vim
	chmod 644 solarized.vim
	VIMCOLORS=`vim -e -T dumb --cmd 'exe "set t_cm=\<C-M>"|echo $VIMRUNTIME|quit' | tr -d '\015' `
	VIMCOLORS=$(echo $VIMCOLORS | xargs)/colors/ # trim path and add colors

	if [ -d $VIMCOLORS ]; then
  		mv -f solarized.vim $VIMCOLORS
	else
		echo "VIM color path $VIMCOLORS does not exist"
	fi
	echo "Please also run as user!"
fi

