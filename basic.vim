" Basic options "
set nocompatible
set hidden
set wildmenu
set wildmode=list:longest
set wildignore=*.jpg,*.png,*.gif,*.pdf

syntax on
filetype on
filetype plugin on
filetype indent on
set encoding=utf-8

" Generated files directories "

" For Unix and Win32, if a directory ends in two path separators "//" or "\\",
" the swap file name will be built from the complete path to the file with
" all path separators substituted to percent '%' signs.
" This will ensure file name uniqueness in the preserve directory.
set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/backup/

if (!isdirectory($HOME .. '/.vim/swapfiles'))
    call mkdir($HOME .. '/.vim/swapfiles')
endif

" Lines "
set number
set relativenumber
set scrolloff=20

" Indentation "
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

" Keybindings "
let mapleader=' '
nn <leader>fs :Ex<CR>
nn <leader>ft :Lex<CR>
nn <Up>     <C-w>+
nn <Down>   <C-w>-
nn <Left>   <C-w><
nn <Right>  <C-w>>

