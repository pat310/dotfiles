#!/bin/bash

echo Enter user.name \(First Last\) for git config:
read username

echo Enter user.email for git config:
read useremail

#set git config user name and email
git config --global user.name $username
git config --global user.email $useremail

#set git to not use less for git branch
git config --global pager.branch false

#symlink .vimrc
ln -sf ~/.vim/.vimrc ~/.vimrc


#check that zsh exists
hash zsh 2>/dev/null || { echo >&2 "I require zsh but it's not installed.  Aborting."; exit 1; }

#install oh_my_zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install ack with homebrew
brew install ack

#install vim plugins using vim-plug
vim +PlugInstall +qall

#symlink .ackrc
ln -sf ~/.vim/.ackrc ~/.ackrc

#symlink
ln -sf ~/.vim/gitignore ~/.gitignore && git config --global core.excludesfile ~/.gitignore
