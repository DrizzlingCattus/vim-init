" Set indentation options
" c-lang auto indent on
" set cindent
" do auto indenting when starting a new line 
set autoindent
set smartindent
" number of spaces to use for each step of (auto)indent
set shiftwidth=2

" indent binding according to file type
" Note that vim augroup need, cuz it duplicate when sourcing init.vim file
" and duplicating make vim slow
augroup customIndent
    autocmd! customIndent
    autocmd FileType c set tabstop=4|set shiftwidth=4|set expandtab
    autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
augroup END

