##tmux.conf configuration
* Install [reattach-to-user-namespace](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard)
* Rename file to `.tmux.conf` and move to ~

##vimrc configuration
* Install [vundle](https://github.com/VundleVim/Vundle.vim)
* Install [Ack](https://beyondgrep.com/install/)
* Rename file to `.vimrc` and move to ~
* Set caps lock to escape [natively](https://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x) or with [karabiner](https://pqrs.org/osx/karabiner/)
* Follow instructions for [YouCompleteMe install](https://github.com/Valloric/YouCompleteMe)

If you are getting the vi error `error: There was a problem with the
editor 'vi'.` when `git commit` or `git merge`, add vim as the [core
editor](https://github.com/VundleVim/Vundle.vim/issues/167) in the
global git configuration `git config --global core.editor /usr/bin/vim`
