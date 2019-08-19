" Set indentation options
" c-lang auto indent on
" set cindent
" do auto indenting when starting a new line 
set autoindent
set smartindent
" number of spaces to use for each step of (auto)indent
set shiftwidth=4

" indent binding according to file type
" Note that vim augroup need, cuz it duplicate when sourcing init.vim file
" and duplicating make vim slow
augroup customIndent
    autocmd! customIndent
    autocmd FileType c set tabstop=8|set shiftwidth=8|set expandtab
    autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab
augroup END

