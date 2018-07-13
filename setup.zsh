#!/usr/bin/env bash
rmflags="-ivr"
if [ "$1" = "--force" ]
then
    rmflags="-fvr"
fi

lnflags="-sTv"
if [ "$(uname 2> /dev/null)" != "Linux" ]; then
    lnflags="-sv"
fi
mkdir ~/.config

## LINUX
if [ "$(uname 2> /dev/null)" = "Linux" ]; then
    ##
    # X11
    #echo "Link: ~/.Xresources -> ~/.dotfiles/x/Xresources"
    #rm $rmflags ~/.Xresources
    #ln $lnflags ~/.dotfiles/x/Xresources ~/.Xresources

    #echo "Link: ~/.xsession -> ~/.dotfiles/x/xsession"
    #rm $rmflags ~/.xsession
    #ln $lnflags ~/.dotfiles/x/xsession ~/.xsession

    #echo "Link: ~/.xinitrc -> ~/.dotfiles/x/xsession"
    #rm $rmflags ~/.xinitrc
    #ln $lnflags ~/.dotfiles/x/xsession ~/.xinitrc

    #echo "Link: ~/.Xmodmap -> ~/.dotfiles/x/Xmodmap"
    #rm $rmflags ~/.Xmodmap
    #ln $lnflags ~/.dotfiles/x/Xmodmap ~/.Xmodmap

    # pentadactyl
    #echo "Link: ~/.pentadactylrc -> ~/.dotfiles/pentadactyl/pentadactylrc"
    #rm $rmflags ~/.pentadactylrc
    #ln $lnflags ~/.dotfiles/pentadactyl/pentadactylrc ~/.pentadactylrc

    #echo "Link: ~/.pentadactyl -> ~/.dotfiles/pentadactyl/pentadactyl"
    #rm $rmflags ~/.pentadactyl
    #ln $lnflags ~/.dotfiles/pentadactyl/pentadactyl ~/.pentadactyl

    # icons
    rm $rmflags ~/.icons
    ln $lnflags ~/.dotfiles/icons ~/.icons

    # fonts
    #echo "Link: ~/.fonts.conf -> ~/.dotfiles/fonts/fonts.conf"
    #rm $rmflags ~/.fonts.conf
    #ln $lnflags ~/.dotfiles/fonts/fonts.conf ~/.fonts.conf

    rm $rmflags ~/.fonts
    ln $lnflags ~/.dotfiles/fonts ~/.fonts

    # gsimplecal
    #mkdir -p ~/.config/gsimplecal

    #echo "Link: ~/.config/gsimplecal/config -> ~/.dotfiles/gsimplecal/config"
    #rm $rmflags ~/.config/gsimplecal/config
    #ln $lnflags ~/.dotfiles/gsimplecal/config ~/.config/gsimplecal/config

    # parcellite
    #mkdir -p ~/.config/parcellite

    #echo "Link: ~/.config/parcellite/parcelliterc -> ~/.dotfiles/parcellite/parcelliterc"
    #rm $rmflags ~/.config/parcellite/parcelliterc
    #ln $lnflags ~/.dotfiles/parcellite/parcelliterc ~/.config/parcellite/parcelliterc

    # nvim
    rm $rmflags ~/.config/nvim
    ln $lnflags ~/.dotfiles/nvim ~/.config/nvim

    #echo "Link: ~/.inputrc -> ~/.dotfiles/zsh/inputrc"
    #rm $rmflags ~/.inputrc
    #ln $lnflags ~/.dotfiles/zsh/inputrc ~/.inputrc

    # htop
    mkdir -p ~/.config/htop
    rm $rmflags ~/.config/htop/htoprc
    ln $lnflags ~/.dotfiles/htop/htoprc ~/.config/htop/htoprc

    # i3
    rm $rmflags ~/.config/i3
    ln $lnflags ~/.dotfiles/i3 ~/.config/i3

    # screen layout
    rm $rmflags ~/.screenlayout
    ln $lnflags ~/.dotfiles/screenlayout ~/.screenlayout

    # screen layout
    rm $rmflags ~/.config/compton.conf
    ln $lnflags ~/.dotfiles/compton.conf ~/.config/compton.conf

    # feh
    rm $rmflags ~/.fehbg
    ln $lnflags ~/.dotfiles/fehbg ~/.fehbg

    # Xresources
    rm $rmflags ~/.Xresources
    ln $lnflags ~/.dotfiles/Xresources ~/.Xresources

    # Xinit
    rm $rmflags ~/.xinitrc
    ln $lnflags ~/.dotfiles/xinitrc ~/.xinitrc
fi

# vim
#echo "Link: ~/.vimrc -> ~/.dotfiles/vim/vimrc"
#rm $rmflags ~/.vimrc
#ln $lnflags ~/.dotfiles/vim/vimrc ~/.vimrc

#echo "Link: ~/.gvimrc -> ~/.dotfiles/vim/gvimrc"
#rm $rmflags ~/.gvimrc
#ln $lnflags ~/.dotfiles/vim/gvimrc ~/.gvimrc

#echo "Link: ~/.vim -> ~/.dotfiles/vim/vim"
#rm $rmflags ~/.vim
#ln $lnflags ~/.dotfiles/vim/vim ~/.vim

# zsh
rm $rmflags ~/.zshrc
rm $rmflags ~/.zshrc
ln $lnflags ~/.dotfiles/zsh/zshrc ~/.zshrc

#echo "Link: ~/.zshenv -> ~/.dotfiles/zsh/zshenv"
#rm $rmflags ~/.zshenv
#ln $lnflags ~/.dotfiles/zsh/zshenv ~/.zshenv

# git
rm $rmflags ~/.gitconfig
ln $lnflags ~/.dotfiles/git/gitconfig ~/.gitconfig

# tmux
#echo "Link: ~/.tmux.conf -> ~/.dotfiles/tmux/tmux.conf"
#rm $rmflags ~/.tmux.conf
#ln $lnflags ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# vscode macOS
rm $rmflags ~/Library/Application\ Support/Code/User/snippets
rm $rmflags ~/Library/Application\ Support/Code/User/settings.json
ln $lnflags ~/.dotfiles/vscode/snippets ~/Library/Application\ Support/Code/User/
ln $lnflags ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
