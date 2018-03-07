#!/usr/bin/env bash
rmflags="-ivr"
if [ "$1" = "--force" ]
then
    rmflags="-fvr"
fi

mkdir ~/.config

##
# X11
#echo "Link: ~/.Xresources -> ~/.dotfiles/x/Xresources"
#rm $rmflags ~/.Xresources
#ln -sTv ~/.dotfiles/x/Xresources ~/.Xresources

#echo "Link: ~/.xsession -> ~/.dotfiles/x/xsession"
#rm $rmflags ~/.xsession
#ln -sTv ~/.dotfiles/x/xsession ~/.xsession

#echo "Link: ~/.xinitrc -> ~/.dotfiles/x/xsession"
#rm $rmflags ~/.xinitrc
#ln -sTv ~/.dotfiles/x/xsession ~/.xinitrc

#echo "Link: ~/.Xmodmap -> ~/.dotfiles/x/Xmodmap"
#rm $rmflags ~/.Xmodmap
#ln -sTv ~/.dotfiles/x/Xmodmap ~/.Xmodmap

# pentadactyl
#echo "Link: ~/.pentadactylrc -> ~/.dotfiles/pentadactyl/pentadactylrc"
#rm $rmflags ~/.pentadactylrc
#ln -sTv ~/.dotfiles/pentadactyl/pentadactylrc ~/.pentadactylrc

#echo "Link: ~/.pentadactyl -> ~/.dotfiles/pentadactyl/pentadactyl"
#rm $rmflags ~/.pentadactyl
#ln -sTv ~/.dotfiles/pentadactyl/pentadactyl ~/.pentadactyl

# icons
rm $rmflags ~/.icons
ln -sTv ~/.dotfiles/icons ~/.icons

# fonts
#echo "Link: ~/.fonts.conf -> ~/.dotfiles/fonts/fonts.conf"
#rm $rmflags ~/.fonts.conf
#ln -sTv ~/.dotfiles/fonts/fonts.conf ~/.fonts.conf

rm $rmflags ~/.fonts
ln -sTv ~/.dotfiles/fonts ~/.fonts

# gsimplecal
#mkdir -p ~/.config/gsimplecal

#echo "Link: ~/.config/gsimplecal/config -> ~/.dotfiles/gsimplecal/config"
#rm $rmflags ~/.config/gsimplecal/config
#ln -sTv ~/.dotfiles/gsimplecal/config ~/.config/gsimplecal/config

# parcellite
#mkdir -p ~/.config/parcellite

#echo "Link: ~/.config/parcellite/parcelliterc -> ~/.dotfiles/parcellite/parcelliterc"
#rm $rmflags ~/.config/parcellite/parcelliterc
#ln -sTv ~/.dotfiles/parcellite/parcelliterc ~/.config/parcellite/parcelliterc

# vim
#echo "Link: ~/.vimrc -> ~/.dotfiles/vim/vimrc"
#rm $rmflags ~/.vimrc
#ln -sTv ~/.dotfiles/vim/vimrc ~/.vimrc

#echo "Link: ~/.gvimrc -> ~/.dotfiles/vim/gvimrc"
#rm $rmflags ~/.gvimrc
#ln -sTv ~/.dotfiles/vim/gvimrc ~/.gvimrc

#echo "Link: ~/.vim -> ~/.dotfiles/vim/vim"
#rm $rmflags ~/.vim
#ln -sTv ~/.dotfiles/vim/vim ~/.vim

# nvim
rm $rmflags ~/.config/nvim
ln -sTv ~/.dotfiles/nvim ~/.config/nvim

# zsh
rm $rmflags ~/.zshrc
ln -sTv ~/.dotfiles/zsh/zshrc.debian ~/.zshrc

#echo "Link: ~/.zshenv -> ~/.dotfiles/zsh/zshenv"
#rm $rmflags ~/.zshenv
#ln -sTv ~/.dotfiles/zsh/zshenv ~/.zshenv

#echo "Link: ~/.inputrc -> ~/.dotfiles/zsh/inputrc"
#rm $rmflags ~/.inputrc
#ln -sTv ~/.dotfiles/zsh/inputrc ~/.inputrc

# git
rm $rmflags ~/.gitconfig
ln -sTv ~/.dotfiles/git/gitconfig ~/.gitconfig

# tmux
#echo "Link: ~/.tmux.conf -> ~/.dotfiles/tmux/tmux.conf"
#rm $rmflags ~/.tmux.conf
#ln -sTv ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# htop
mkdir -p ~/.config/htop
rm $rmflags ~/.config/htop/htoprc
ln -sTv ~/.dotfiles/htop/htoprc ~/.config/htop/htoprc

# i3
rm $rmflags ~/.config/i3
ln -sTv ~/.dotfiles/i3 ~/.config/i3 

# screen layout
rm $rmflags ~/.screenlayout
ln -sTv ~/.dotfiles/screenlayout ~/.screenlayout

# screen layout
rm $rmflags ~/.config/compton.conf
ln -sTv ~/.dotfiles/compton.conf ~/.config/compton.conf

# Xresources
rm $rmflags ~/.Xresources
ln -sTv ~/.dotfiles/Xresources ~/.Xresources

# Xinit
rm $rmflags ~/.xinitrc
ln -sTv ~/.dotfiles/xinitrc ~/.xinitrc
