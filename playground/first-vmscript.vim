set nocompatible

syntax enable

inoremap <esc> <nop>
inoremap kj <esc>
inoremap jk <esc>

function! Rotate() 
	" 현재 줄을 문장 맨윗줄로 옮긴다.
	" normal!은 normal mode에서 명령을 실행시키는 명령 `:help normal` 참고
	normal! kmmjdd{p`m
endfunction

nnoremap <leader>up :call Rotate()<cr>

" 현재 스크립트 파일을 실행 및 반영한다.
nnoremap <F5> :source %<cr>
