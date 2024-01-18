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

" Lines "
set number
set relativenumber
set scrolloff=20

" Indentation "
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

" Colorscheme " 
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark
"let g:gruvbox_contrast_dark = 1
"let g:gruvbox_italic = 1
"colorscheme gruvbox

" Keybindings "
let mapleader=' '
nn <leader>fs :Ex<CR>
nn <leader>ft :Lex<CR>
nn <Up>     <C-w>+
nn <Down>   <C-w>-
nn <Left>   <C-w><
nn <Right>  <C-w>>

