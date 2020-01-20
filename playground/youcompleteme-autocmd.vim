
function! CheckRemapping()
        ":help mapping
        ":help :verbose
        ":help :noremap
        verbose nmap <C-[>
endfunction
nnoremap <leader>verbose :call CheckRemapping()<cr>

" [Accept list]
nnoremap <c-]> :YcmCompleter GoTo<cr>

function! SaveToPlayground(prefix)
        call inputsave()
        let filename = input('Enter playground filename: ')
        call inputrestore()

        " https://stackoverflow.com/questions/28651472/in-vim-how-can-i-save-a-file-to-a-path-stored-in-a-variable
        let file = a:prefix.filename.".vim"
        exec "write ".file
endfunction
" Save to playground vim file
nnoremap <leader>vim :call SaveToPlayground("~/.config/nvim/playground/")<cr>

" Open init.vim
nnoremap <leader>init :sp ~/.config/nvim/init.vim<cr>


