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

