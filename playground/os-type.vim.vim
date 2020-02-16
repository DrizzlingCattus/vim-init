

let os_type = trim(system('uname'))

" [Neovim System Provider Settings] {{{
if os_type ==? 'Darwin'
  let g:python3_host_prog = '/usr/local/bin/python3'
  let g:python_host_prog = '/usr/bin/python2.7'
else
  let g:python3_host_prog = '/usr/local/bin'
  let g:python_host_prog = '/usr/bin/python'
endif
" }}}

echo g:python3_host_prog
echo g:python_host_prog
