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

"jsx syntax highlighting
Plug 'https://github.com/mxw/vim-jsx'

"Fuzzy search through files
Plug 'https://github.com/mileszs/ack.vim'

"Purescript syntax highlighting
Plug 'https://github.com/purescript-contrib/purescript-vim'

"ReasonML syntax highlighting
Plug 'reasonml-editor/vim-reason-plus'

"Typescript syntax highlighting
Plug 'https://github.com/leafgarland/typescript-vim'

"Language server
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Initialize plugin system
call plug#end()

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
"ctrlp ignore node_modules
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

"opening nerd tree
nmap <leader>ne :NERDTree<cr>

"vim haskell config
" let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
" let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
" let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
" let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
" let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
" let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
" let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

"force Ack to use Ack! which stops it from opening first result
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>


"Language server commands
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ }

let g:LanguageClient_loggingLevel = 'INFO'
let g:LanguageClient_loggingFile =  expand('~/.local/share/nvim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.local/share/nvim/LanguageServer.log')

nnoremap ,, :call LanguageClient_contextMenu()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

