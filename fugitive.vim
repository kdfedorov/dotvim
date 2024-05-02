function! TryMapFugitive()
    if exists(":Git") && isdirectory(".git")
        nn <leader>G :Git 
        nn <leader>gps :Git push<CR>
        nn <leader>gpl :Git pull<CR>
        nn <leader>glg :Git log<CR>
        nn <leader>gbl :Git blame<CR>
        nn <leader>gco :Git checkout<CR>
        nn <leader>gci :Git commit<CR>
        nn <leader>gbr :Git branch<CR>
    endif
endfunction

au VimEnter * call TryMapFugitive()
