if executable('cmake')
    let g:cmake_build_dir_location='./build'
    let g:cmake_link_compile_commands = 1
    nn <silent> <leader>cm :CMakeToggle<CR>
endif

