

function WrapVimTitle(start, end)
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

nnoremap <leader>wv :call WrapVimTitle("-", "-")<CR>
