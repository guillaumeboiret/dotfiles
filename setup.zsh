#!/bin/zsh

RM_FLAGS="irf"
LN_FLAGS="sT"

typeset -A CONFIG_FILE;
CONFIG_FILE[zsh/zshrc]=".zshrc"
# Home
CONFIG_FILE[git/gitconfig]=".gitconfig"
CONFIG_FILE[icons]=".icons"
CONFIG_FILE[fonts]=".fonts"
CONFIG_FILE[fonts]=".local/share/fonts"
CONFIG_FILE[screenlayout]=".screenlayout"
CONFIG_FILE[fehbg]=".fehbg"
#CONFIG_FILE[Xresources]=".Xresources"
#CONFIG_FILE[xinitrc]=".xinitrc"
#CONFIG_FILE[vim/vimrc]=".vimrc"
CONFIG_FILE[zsh/zshrc]=".zshrc"

# Config
CONFIG_FILE[htop]=".config/htop"
CONFIG_FILE[i3]=".config/i3"
CONFIG_FILE[polybar]=".config/polybar"
CONFIG_FILE[compton]=".config/compton"
CONFIG_FILE[gtk-3.0]=".config/gtk-3.0"
CONFIG_FILE[dconf]=".config/dconf"
CONFIG_FILE[wallpapers]="Pictures/wallpapers"

echo "-> Removing existing files..."
for key val in ${(kv)CONFIG_FILE}; do
	rm -$RM_FLAGS $HOME/$val
done; 

echo "-> Linking new file..."
for key val in ${(kv)CONFIG_FILE}; do
	ln -$LN_FLAGS $PWD/$key $HOME/$val
done; 

