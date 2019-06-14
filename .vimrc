"automatically install vim-plug if it isn't included
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

"ALE TS linting
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

filetype on "filetype detection
syntax on "syntax highlighting
colorscheme Tomorrow-Night "choosing the color theme from colors directory
set colorcolumn=90 "setting a colored column line
set number "adding line numbers

"Setting ALEError group color to avoid error message E28 can not find ALEError
highlight ALEError guibg=Red

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

"highlight search item (useful when going to next selected item)
set hlsearch

"highlight as you search words
set incsearch

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

autocmd BufRead *.ts setlocal filetype=typescript

let g:ale_fixers = {
    \ 'javascript': ['prettier'],
    \ 'typescript': ['prettier'],
    \}
let g:ale_javascript_prettier_use_local_config = 1

noremap <silent> gdd :ALEGoToDefinition<CR>
noremap <silent> gdv :ALEGoToDefinitionInVSplit<CR>
noremap <silent> gdx :ALEGoToDefinitionInSplit<CR>
noremap <silent> gdt :ALEGoToDefinitionInTab<CR>
noremap <silent> gfr :ALEFindReferences<CR>
noremap <silent> K :ALEHover<CR>
