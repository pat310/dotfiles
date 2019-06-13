git clone to the home directory as `.vim` and run the setup script:
`git clone https://github.com/pat310/dotfiles.git ~/.vim && bash ~/.vim/runSetup.sh`

## vimrc configuration
* Install [vim-plug](https://github.com/junegunn/vim-plug)
* Install ack (`brew install ack`)
* In vim, run `:PlugInstall` to install plugins
* Symlink .vimrc in git repo to ~: `ln -sf ~/.vim/.vimrc ~/.vimrc`
* Symlink .ackrc in git repo to ~: `ln -sf ~/.vim/.ackrc ~/.ackrc`
* Symlink gitignore in git repo to ~: `ln -sf ~/.vim/gitignore ~/.gitignore && git config --global core.excludesfile ~/.gitignore`

## Additional tips
* Set [git config](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup) name and email
* Set caps lock to escape [natively](https://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x) or with [karabiner](https://pqrs.org/osx/karabiner/)
* [Tomorrow color theme](https://github.com/chriskempson/tomorrow-theme)
* Download [Firacode](https://github.com/tonsky/FiraCode) for ligatures. Select all TTF fonts and open and install with font book. Set font in terminal preferences (not done in vimrc).
