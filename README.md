git clone to the home directory as `.vim` and run the setup script:
`git clone https://github.com/pat310/dotfiles.git ~/.vim && bash ~/.vim/runSetup.sh`

## vimrc configuration
* Install [term2](https://www.iterm2.com/)
* Install [vim-plug](https://github.com/junegunn/vim-plug)
* Install ack (`brew install ack`)
* In vim, run `:PlugInstall` to install plugins
* Symlink .vimrc in git repo to ~: `ln -sf ~/.vim/.vimrc ~/.vimrc`
* Symlink .ackrc in git repo to ~: `ln -sf ~/.vim/.ackrc ~/.ackrc`
* Symlink gitignore in git repo to ~: `ln -sf ~/.vim/gitignore ~/.gitignore && git config --global core.excludesfile ~/.gitignore`
* Symlink .zshrc in git repo to ~: `ln -sf ~/.vim/.zshrc ~/.zshrc`
* Clone base16-shell, source new .zshrc (or restart terminal), then run `base16_tomorrow_night` in terminal
* To load color theme, on iTerm2, go to Preferences > Profiles > Colors
  * Click on Color Presets > Import and import tomorrow_night_256
  * Load the color theme from `base16-iterm2` by clicking on Load Presets and selecting it (if the file is hidden press  `cmd + shift + .`)

## Additional tips
* Set [git config](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup) name and email
* Set caps lock to escape [natively](https://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x) or with [karabiner](https://pqrs.org/osx/karabiner/)
* Download [Firacode](https://github.com/tonsky/FiraCode) for ligatures. Select all TTF fonts and open and install with font book. Set font in terminal preferences (not done in vimrc).
