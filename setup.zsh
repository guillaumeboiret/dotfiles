#!/bin/zsh

RM_FLAGS="irf"
LN_FLAGS="sT"

typeset -A CONFIG_FILE;
CONFIG_FILE[zsh/zshrc]=".zshrc"
CONFIG_FILE[git/gitconfig]=".gitconfig"
CONFIG_FILE[icons]=".icons"
CONFIG_FILE[fonts]=".fonts"
CONFIG_FILE[nvim]=".config/nvim"
CONFIG_FILE[zsh/inputrc]=".inputrc"
CONFIG_FILE[htop/htoprc]=".config/htop/htoprc"
CONFIG_FILE[i3/config]=".config/i3/config"
CONFIG_FILE[polybar]=".config/polybar"
CONFIG_FILE[screenlayout]=".screenlayout"
CONFIG_FILE[compton/config]=".config/compton.conf"
CONFIG_FILE[fehbg]=".fehbg"
CONFIG_FILE[Xresources]=".Xresources"
CONFIG_FILE[xinitrc]=".xinitrc"
CONFIG_FILE[zsh/zshrc]=".zshrc"
#CONFIG_FILE[vim/vimrc]=".vimrc"
CONFIG_FILE[gtk-3.0]=".config/gtk-3.0"

echo "-> Removing existing files..."
for key val in ${(kv)CONFIG_FILE}; do
	rm -$RM_FLAGS $HOME/$val
done; 

echo "-> Linking new file..."
for key val in ${(kv)CONFIG_FILE}; do
	ln -$LN_FLAGS $PWD/$key $HOME/$val
done; 

