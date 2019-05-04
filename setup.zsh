#!/bin/zsh

RM_FLAGS="ivrf"
LN_FLAGS="sTv"

typeset -A CONFIG_FILE;
CONFIG_FILE[zsh/zshrc]=".zshrc"
CONFIG_FILE[x/Xresources]=".Xresources"
CONFIG_FILE[x/xsession]=".xsession"
CONFIG_FILE[x/xsession]=".xinitrc"
CONFIG_FILE[x/Xmodmap]=".Xmodmap"
CONFIG_FILE[pentadactyl/pentadactylrc]=".pentadactylrc"
CONFIG_FILE[pentadactyl/pentadactyl]=".pentadactyl"
CONFIG_FILE[icons]=".icons"
CONFIG_FILE[fonts/fonts.conf]=".fonts.conf"
CONFIG_FILE[fonts]=".fonts"
CONFIG_FILE[gsimplecal/config]=".config/gsimplecal/config"
CONFIG_FILE[parcellite/parcelliterc]=".config/parcellite/parcelliterc"
CONFIG_FILE[nvim]=".config/nvim"
CONFIG_FILE[zsh/inputrc]=".inputrc"
CONFIG_FILE[htop/htoprc]=".config/htop/htoprc"
CONFIG_FILE[i3/config]=".config/i3/config"
CONFIG_FILE[i3status]=".config/i3status"
CONFIG_FILE[screenlayout]=".screenlayout"
CONFIG_FILE[compton/compton.conf]=".config/compton.conf"
CONFIG_FILE[fehbg]=".fehbg"
CONFIG_FILE[Xresources]=".Xresources"
CONFIG_FILE[xinitrc]=".xinitrc"
CONFIG_FILE[zsh/zshrc]=".zshrc"
CONFIG_FILE[vim/vimrc]=".vimrc"
CONFIG_FILE[tmux/tmux.conf]=".tmux.conf"

echo "Removing existing files..."
for key val in ${(kv)CONFIG_FILE}; do
	rm -$RM_FLAGS $HOME/$val
done; 

echo "Linking new file..."
for key val in ${(kv)CONFIG_FILE}; do
	ln -$LN_FLAGS $PWD/$key $HOME/$val
done; 

