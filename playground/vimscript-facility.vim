"
"
"
" playground에 있는 파일 열기?
"
"
" 내가 만든 mapping shortcut들을 리스트로 볼 수 있는 cheatsheet
"
"

" ///////////////////////
" [[[[[[[[Accept!]]]]]]]]
" ///////////////////////
" clear without deleting line
function! ClearLine()
        normal! 0D
endfunction
" {{{ }}} 열고 닫는거 만들기
function! WrapWithStr(start, end)
        normal! {
        if getline(".") != ""
                normal! O
                call ClearLine()
        endif
        call setline(".", a:start)

        normal! }
        if getline(".") != ""
                normal! o
                call ClearLine()
        endif
        call setline(".", a:end)
endfunction
" wrapping vim
" nnoremap <leader>wv :call WrapWithStr("\" {{{", "\" }}}")<cr>

