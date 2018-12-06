##vimrc configuration
* Install [vim-plug](https://github.com/junegunn/vim-plug)
* Rename file to `.vimrc` and move to ~
* Set caps lock to escape [natively](https://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x) or with [karabiner](https://pqrs.org/osx/karabiner/)
* [Tomorrow color theme](https://github.com/chriskempson/tomorrow-theme)

If you are getting the vi error `error: There was a problem with the
editor 'vi'.` when `git commit` or `git merge`, add vim as the [core
editor](https://github.com/VundleVim/Vundle.vim/issues/167) in the
global git configuration `git config --global core.editor /usr/bin/vim`
