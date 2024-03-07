" vim-plug "
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    echom printf("\"vim-plug\" is not installed. Trying to fetch...")
    if (executable('curl'))
        silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    else
        echom printf("\"curl\" is not installed. Cannot fetch \"vim-plug\"!")
    endif
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

function! PlugLoaded(name)
    return (
        \ has_key(g:plugs, a:name) &&
        \ isdirectory(g:plugs[a:name].dir) &&
        \ stridx(&rtp, g:plugs[a:name].dir) >= 0)
endfunction

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
    Plug 'prabirshrestha/vim-lsp'                   |
        Plug 'mattn/vim-lsp-settings'               |
        Plug 'piec/vim-lsp-clangd'                  |
        Plug 'prabirshrestha/asyncomplete.vim'      |
        Plug 'prabirshrestha/asyncomplete-lsp.vim'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } | Plug 'junegunn/fzf.vim'
    Plug 'cdelledonne/vim-cmake'
    Plug 'tpope/vim-fugitive'
call plug#end()

