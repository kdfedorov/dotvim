let configmodules = [           
    \ '~/.vim/basic.vim',         
    \ '~/.vim/plug.vim',          
    \ '~/.vim/lsp.vim',           
    \ '~/.vim/asyncomplete.vim',  
    \ '~/.vim/fzf.vim',           
    \ '~/.vim/cmake.vim'          
\ ]

for modulepath in configmodules
    if filereadable( expand(modulepath) )
        execute "source " . expand(modulepath)
    else
        echom printf("Warning: config module \"%s\" is not available!\n", modulepath)
    endif
endfor

""if filereadable( expand('~/.vim/basic.vim') )
""    source ~/.vim/basic.vim
""endif
""
""if filereadable( expand('~/.vim/plug.vim') )
""    source ~/.vim/plug.vim
""endif
""
""if filereadable( expand('~/.vim/lsp.vim') )
""    source ~/.vim/lsp.vim
""endif
""
""if filereadable( expand('~/.vim/asyncomplete.vim') )
""    source ~/.vim/asyncomplete.vim
""endif
""
""if filereadable( expand('~/.vim/fzf.vim') )
""    source ~/.vim/fzf.vim
""endif
""
""if filereadable( expand('~/.vim/cmake.vim') )
""    source ~/.vim/cmake.vim
""endif
""
