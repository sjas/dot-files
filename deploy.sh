#!/bin/bash

# This script aims at deploying the links to your home
# Use: /path/to/the/script/$0
# Example: ~/repo/perso/dot-files/deploy.sh
# The use of the absolute name for calling the script is unavoidable

REPO_WORK=$SRC/work/bin
REPO_DOTFILES=$(dirname $0)

rm $HOME/.stumpwmrc
ln -s $REPO_DOTFILES/.stumpwmrc $HOME/

# $HOME/.bash*
rm $HOME/.profile
ln -s $REPO_DOTFILES/.profile $HOME/

rm $HOME/.bashrc
ln -s $REPO_DOTFILES/.bashrc $HOME/

rm $HOME/.bashrc-env
ln -s $REPO_DOTFILES/.bashrc-env $HOME/

rm $HOME/.bashrc-path
ln -s $REPO_DOTFILES/.bashrc-path $HOME/

rm $HOME/.bash_aliases
ln -s $REPO_DOTFILES/.bash_aliases $HOME/

rm $HOME/.bashrc-prompt
ln -s $REPO_DOTFILES/.bashrc-prompt $HOME/

rm $HOME/.tmux.conf
ln -s $REPO_DOTFILES/.tmux.conf $HOME/

rm $HOME/.ratpoisonrc
ln -s $REPO_DOTFILES/.ratpoisonrc $HOME/

rm $HOME/.xmodmaprc
ln -s $REPO_DOTFILES/.xmodmaprc $HOME/

if [ -f $REPO_WORK/.bashrc-work ]; then
    rm $HOME/.bashrc-work
    ln -s $REPO_WORK/.bashrc-work $HOME/
fi

rm $HOME/.git-completion.bash
ln -s $REPO_DOTFILES/.git-completion.bash $HOME/

rm $HOME/.conkerorrc
ln -s $REPO_DOTFILES/.conkerorrc $HOME/

mkdir -p ~/.lein
rm $HOME/.lein/profiles.clj
ln -s $REPO_DOTFILES/profiles.clj $HOME/.lein/profiles.clj