filetype on "filetype detection
syntax on "syntax highlighting
colorscheme Tomorrow-Night "choosing the color theme from colors directory
set colorcolumn=90 "setting a colored column line
set number "adding line numbers

"keeping more information in memory
set hidden
set history=100

"smart indenting
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"turn hybrid line numbers on
set number relativenumber
set nu rnu

"remove white space on save
autocmd BufWritePre * :%s/\s\+$//e

"highlight search words
set hlsearch

"to always display the bottom status line
set laststatus=2

"highlight matching parenthesis
set showmatch

"set airline bar theme
let g:airline_theme='tomorrow'

"allow fuzzy search through files
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

"opening nerd tree
nmap <leader>ne :NERDTree<cr>

"vim haskell config
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()
"bottom status bar
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"ctrlp fuzzy search
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
"nerdtree file directory
Plug 'https://github.com/scrooloose/nerdtree'
"matching bracket completion
Plug 'https://github.com/jiangmiao/auto-pairs'
"haskell highlighting
Plug 'https://github.com/neovimhaskell/haskell-vim'
"tab completion
Plug 'https://github.com/ervandew/supertab'
" Initialize plugin system
call plug#end()
