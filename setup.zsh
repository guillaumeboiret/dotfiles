#!/usr/bin/env bash

# arg number check
if [ $# -lt 1 ]
then
    echo "Usage: $0 /absolute/path/to/conf/git [--force]"
    exit 1
fi

# absolute directory path check
case $1 in
    /*)
        if [ ! -d "$1" ]
        then
            echo "$1 is not a directory"
            exit 1
        fi
        ;;
    *)
        echo "$1 is not an absolute path"
        exit 1
        ;;
esac

rmflags="-ivr"
if [ "$2" = "--force" ]
then
    rmflags="-fvr"
fi

# dir
#echo "Link: ~/.dotfiles -> $1"
#rm $rmflags ~/.dotfiles
#ln -sT "$1" ~/.dotfiles

# X11
echo "Link: ~/.Xresources -> ~/.dotfiles/x/Xresources"
rm $rmflags ~/.Xresources
ln -sT ~/.dotfiles/x/Xresources ~/.Xresources

echo "Link: ~/.xsession -> ~/.dotfiles/x/xsession"
rm $rmflags ~/.xsession
ln -sT ~/.dotfiles/x/xsession ~/.xsession

echo "Link: ~/.xinitrc -> ~/.dotfiles/x/xsession"
rm $rmflags ~/.xinitrc
ln -sT ~/.dotfiles/x/xsession ~/.xinitrc

echo "Link: ~/.Xmodmap -> ~/.dotfiles/x/Xmodmap"
rm $rmflags ~/.Xmodmap
ln -sT ~/.dotfiles/x/Xmodmap ~/.Xmodmap

# pentadactyl
echo "Link: ~/.pentadactylrc -> ~/.dotfiles/pentadactyl/pentadactylrc"
rm $rmflags ~/.pentadactylrc
ln -sT ~/.dotfiles/pentadactyl/pentadactylrc ~/.pentadactylrc

echo "Link: ~/.pentadactyl -> ~/.dotfiles/pentadactyl/pentadactyl"
rm $rmflags ~/.pentadactyl
ln -sT ~/.dotfiles/pentadactyl/pentadactyl ~/.pentadactyl

# icons
echo "Link: ~/.icons -> ~/.dotfiles/icons"
rm $rmflags ~/.icons
ln -sT ~/.dotfiles/icons ~/.icons

# fonts
echo "Link: ~/.fonts.conf -> ~/.dotfiles/fonts/fonts.conf"
rm $rmflags ~/.fonts.conf
ln -sT ~/.dotfiles/fonts/fonts.conf ~/.fonts.conf

echo "Link: ~/.fonts -> ~/.dotfiles/fonts"
rm $rmflags ~/.fonts
ln -sT ~/.dotfiles/fonts ~/.fonts

# openbox
mkdir -p ~/.config/openbox

echo "Link: ~/.config/openbox/menu.xml -> ~/.dotfiles/openbox/menu.xml"
rm $rmflags ~/.config/openbox/menu.xml
ln -sT ~/.dotfiles/openbox/menu.xml ~/.config/openbox/menu.xml

echo "Link: ~/.config/openbox/rc.xml -> ~/.dotfiles/openbox/rc.xml"
rm $rmflags ~/.config/openbox/rc.xml
ln -sT ~/.dotfiles/openbox/rc.xml ~/.config/openbox/rc.xml

echo "Link: ~/.config/openbox/autostart.sh -> ~/.dotfiles/openbox/autostart.sh"
rm $rmflags ~/.config/openbox/autostart.sh
ln -sT ~/.dotfiles/openbox/autostart.sh ~/.config/openbox/autostart.sh

mkdir -p ~/.themes

echo "Link: ~/.themes/modern-grey -> ~/.dotfiles/openbox/modern-grey"
rm $rmflags ~/.themes/modern-grey
ln -sT ~/.dotfiles/openbox/modern-grey ~/.themes/modern-grey

# gsimplecal
mkdir -p ~/.config/gsimplecal

echo "Link: ~/.config/gsimplecal/config -> ~/.dotfiles/gsimplecal/config"
rm $rmflags ~/.config/gsimplecal/config
ln -sT ~/.dotfiles/gsimplecal/config ~/.config/gsimplecal/config

# parcellite
mkdir -p ~/.config/parcellite

echo "Link: ~/.config/parcellite/parcelliterc -> ~/.dotfiles/parcellite/parcelliterc"
rm $rmflags ~/.config/parcellite/parcelliterc
ln -sT ~/.dotfiles/parcellite/parcelliterc ~/.config/parcellite/parcelliterc

# vim
echo "Link: ~/.vimrc -> ~/.dotfiles/vim/vimrc"
rm $rmflags ~/.vimrc
ln -sT ~/.dotfiles/vim/vimrc ~/.vimrc

echo "Link: ~/.gvimrc -> ~/.dotfiles/vim/gvimrc"
rm $rmflags ~/.gvimrc
ln -sT ~/.dotfiles/vim/gvimrc ~/.gvimrc

echo "Link: ~/.vim -> ~/.dotfiles/vim/vim"
rm $rmflags ~/.vim
ln -sT ~/.dotfiles/vim/vim ~/.vim

# nvim
echo "Link: ~/.config/nvim -> ~/.dotfiles/vim/vim"
rm $rmflags ~/.config/nvim
ln -sT ~/.dotfiles/vim/vim ~/.config/nvim

# zsh
echo "Link: ~/.zshrc -> ~/.dotfiles/zsh/zshrc"
rm $rmflags ~/.zshrc
ln -sT ~/.dotfiles/zsh/zshrc ~/.zshrc

echo "Link: ~/.zshenv -> ~/.dotfiles/zsh/zshenv"
rm $rmflags ~/.zshenv
ln -sT ~/.dotfiles/zsh/zshenv ~/.zshenv

echo "Link: ~/.inputrc -> ~/.dotfiles/zsh/inputrc"
rm $rmflags ~/.inputrc
ln -sT ~/.dotfiles/zsh/inputrc ~/.inputrc

# git
echo "Link: ~/.gitconfig -> ~/.dotfiles/git/gitconfig"
rm $rmflags ~/.gitconfig
ln -sT ~/.dotfiles/git/gitconfig ~/.gitconfig

# tmux
echo "Link: ~/.tmux.conf -> ~/.dotfiles/tmux/tmux.conf"
rm $rmflags ~/.tmux.conf
ln -sT ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# htop
mkdir -p ~/.config/htop

echo "Link: ~/.config/htop/htoprc -> ~/.dotfiles/htop/htoprc"
rm $rmflags ~/.config/htop/htoprc
ln -sT ~/.dotfiles/htop/htoprc ~/.config/htop/htoprc

