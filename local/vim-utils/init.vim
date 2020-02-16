
" Save to playground vim file
function! SaveToPlayground(prefix)
  call inputsave()
  let filename = input('Enter playground filename: ')
  call inputrestore()

  " https://stackoverflow.com/questions/28651472/in-vim-how-can-i-save-a-file-to-a-path-stored-in-a-variable
  let file = a:prefix.filename.".vim"
  exec "write ".file
endfunction


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

" Vimscript 정리를 위한 title comment wrapper
function! WrapVimTitle(start, end)
  let length = len(getline("."))

  if length == 0
    return <Esc>
  endif

  let start_comment = "\" "
  let l:str_wrapper = start_comment . repeat(a:start, length)
  let l:end_wrapper = start_comment . repeat(a:end, length)
  
  " 기존에 mapping되어있는 keybinding을 무시하고 normal모드 진입
  " 타이틀 위쪽에 {str_wrapper}를 삽입
  normal! O
  call setline(".", l:str_wrapper)
  
  " 타이틀 아래쪽에 {end_wrapper}를 삽입
  normal! jo
  call setline(".", l:end_wrapper)
endfunction

