#!/bin/bash

#check that shell is running in iterm2 and zsh exists
if [ "$TERM_PROGRAM" == "iTerm.app" ]; then
{ echo >&2 "Run me in iterm2"; exit 1; }
fi

#check that zsh exists
hash zsh 2>/dev/null || { echo >&2 "I require zsh but it's not installed.  Aborting."; exit 1; }

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

#Copy Firacode fonts into Library fonts
cp ~/.vim/FiraCode/distr/ttf/* /Library/Fonts/

#remove existing .zshrc and symlink new one
rm ~/.zshrc
ln -sf ~/.vim/.zshrc ~/.zshrc

#clone base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

#source new .zshrc and run base16 command
source .zshrc
base16_tomorrow_night

# Specify the preferences directory for iterm2
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.vim/iterm2_profile"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
