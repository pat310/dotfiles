git clone to the home directory as `.vim`:
`git clone https://github.com/pat310/dotfiles.git ~/.vim`

## vimrc configuration
* Install [vim-plug](https://github.com/junegunn/vim-plug)
* Install ack (`brew install ack`)
* In vim, run `:PlugInstall` to install plugins
* Symlink .vimrc in git repo to ~: `ln -sf ~/.vim/.vimrc ~/.vimrc`
* Symlink .ackrc in git repo to ~: `ln -sf ~/.vim/.ackrc ~/.ackrc`

## Additional tips
* Set caps lock to escape [natively](https://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x) or with [karabiner](https://pqrs.org/osx/karabiner/)
* [Tomorrow color theme](https://github.com/chriskempson/tomorrow-theme)
