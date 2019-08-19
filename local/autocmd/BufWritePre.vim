" Erase all the tailing space
"
" %s/\s\+$//e 
" * \s\+$ is white space, more than one, in the end
" * e is no error display
augroup eraseTrailingSpace
    autocmd! eraseTrailingSpace
    autocmd FileType c,cpp,javascript autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END
