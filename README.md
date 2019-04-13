git clone to the home directory as `.vim`:
`git clone https://github.com/pat310/dotfiles.git ~/.vim`

## vimrc configuration
* Install [vim-plug](https://github.com/junegunn/vim-plug)
* Install ack (`brew install ack`)
* In vim, run `:PlugInstall` to install plugins
* Symlink .vimrc in git repo to ~: `ln -sf ~/.vim/.vimrc ~/.vimrc`
* Symlink .ackrc in git repo to ~: `ln -sf ~/.vim/.ackrc ~/.ackrc`
* `sudo npm install -g javascript-typescript-langserver` [typescript and javascript language features](https://github.com/sourcegraph/javascript-typescript-langserver)

## Additional tips
* Set caps lock to escape [natively](https://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x) or with [karabiner](https://pqrs.org/osx/karabiner/)
* [Tomorrow color theme](https://github.com/chriskempson/tomorrow-theme)
* Download [Firacode](https://github.com/tonsky/FiraCode) for ligatures. Select all TTF fonts and open and install with font book. Set font in terminal preferences (not done in vimrc).
* Using Language Server Protocol for language features - https://github.com/autozimu/LanguageClient-neovim
