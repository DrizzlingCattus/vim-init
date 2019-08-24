" [Migration Settings] {{{
" Vim to Neovim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = $runtimepath
if !empty(glob("~/.vimrc"))
    source ~/.vimrc
endif
" }}}


" [Neovim System Provider Settings] {{{
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'
" }}}


" [Vundle - package manager Settings] {{{
" Additional vundle loading
" main vundle loads in 'vimrc' file
set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

" install package in path, begin(path)
call vundle#begin("~/.config/nvim/bundle")

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" # Browsing
" ctags plugin
Plugin 'Tagbar'
" ctags file management plugin
Plugin 'xolox/vim-easytags'
" extended standard library for vimscript
" used by vim-easytags plugin
Plugin 'xolox/vim-misc'
" ctags for javascript, install esctags with 'npm install -g esctags' before
Plugin 'hushicai/tagbar-javascript.vim'
" file browser
Plugin 'scrooloose/nerdtree'
" bind gnu-grep for using grep fgrep egrep ...
Plugin 'vim-scripts/grep.vim'

" # Code Edittings
" make JSDoc format commenting
Plugin 'heavenshell/vim-jsdoc'
" use external linter and view linter error looks good
Plugin 'vim-syntastic/syntastic'
" word surrounding utility like something to 'something' or <p>something</p>
Plugin 'tpope/vim-surround'
" autocomplete by tab
Plugin 'ervandew/supertab'

" # Monitoring
" show if code is change, modified, delete in side of number line
Plugin 'airblade/vim-gitgutter'
" draw indent line
Plugin 'Yggdroot/indentLine'
" make bottom status bar readable by more functionality
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" # Good looking
" vim dracula theme
Plugin 'dracula/vim'
" Typescript syntax plugin
Plugin 'leafgarland/typescript-vim'
" provide improved javascript syntax highlight and indent
" This comment is left for historic point with vim-jxs-improve
"Plugin 'pangloss/vim-javascript'
" provide javascript syntax highlight and indent with react jsx
" NOTE: you need to disable Plugin 'pangloss/vim-javascript'
Plugin 'chemzqm/vim-jsx-improve'

" # Third party
" Live markdown plugin
Plugin 'shime/vim-livedown'
" gdb integration
Plugin 'vim-scripts/Conque-GDB'

call vundle#end()
filetype plugin indent on
" }}}


" [IndentLine Settings] {{{
let g:indentLine_enabled = 1
" }}}


" [Nerdtree Settings] {{{
" Keymapping - NERDTree on
nnoremap <Leader>nt <ESC>:NERDTreeToggle<CR>
" }}}


" [Vim-Airline Settings] {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = "unique_tail"

" setting powerline font
" first, install powerline font package, apt-get install fonts-powerline
" then unicode will be applied
" for getting interface looks good, install source-code-pro font
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_theme = "powerlineish"
" }}}


" [Tagbar Settings] {{{
" Keymapping
nnoremap <F8> :TagbarToggle<CR>
" }}}


" [Vim-easytags Settings] {{{
set tag=./tags;/
" load tags async
let g:easytags_async = 1
" turn off the auto highlight
let g:easytags_auto_highlight = 0
" can trace struct member
let g:easytags_include_members = 1
" load this project tags first. if not, load global tags
let g:easytags_dynamic_files = 1
" }}}


" [Grep.vim Settings] {{{
" skip files when use 'Rgrep'
let g:Grep_Skip_Files = '*~ tags cscope.out'
let g:Grep_OpenQuickfixWindow = 1
let g:Grep_Default_Options = '-rn'

nnoremap <silent> <F9> :Rgrep<CR>
" }}}


" [ConqueGDB Setting] {{{
" 1: strip color after 200 line, 2: always with color
let g:ConqueTerm_Color=2            
" close conque when program ends running
let g:ConqueTerm_CloseOnEnd=1
" display warning message if conqueTerm is configed incorrect
let g:ConqueTerm_StartMessages=0
" }}}


" [vim-jsdoc Settings] {{{
" binding :jsdoc key, generate JSdoc in front of function
nmap <silent> <C-l> <Plug>(jsdoc)
" enable es6 arrow function for jsdoc
let g:jsdoc_enable_es6 = 1
" allow promt for interative input
let g:jsdoc_allow_input_prompt = 1
" promt for function description
let g:jsdoc_input_description = 1
" set param description seperator
let g:jsdoc_param_description_seperator = ' '
" }}}


" [vim-syntastic Settings] {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
" }}}


" [vim-livedown Settings] {{{
" shortcut mapping
nmap gm :LivedownToggle<CR>
" }}}


" [Editor Snippet files] {{{
" load snippet files
source ~/.config/nvim/local/snippet/init.vim
" }}}


" [Editor Built-in Face Settings] {{{
" Display number of line in side of editor
set number
" Set column limit and its color
set colorcolumn=80
" 'syntax on' allow you to change highlight color 
syntax on
hi ColorColumn ctermbg=Red guibg=Red
" }}}

" [Extra custom functionality] {{{
source ~/.config/nvim/local/autocmd/init.vim
" }}}

" [Indentation Built-in Settings] {{{
source ~/.config/nvim/local/indent/init.vim
" }}}


" [Search Built-in Command Settings] {{{
" Stop the search at the end or start of the file
" that is, disabled search by rotating
set nowrapscan
" }}}

" [Built-in etc variable settings] {{{
set clipboard+=unnamedplus
" }}}


" [General Useful Keymapping] {{{
" Rebinding <Leader> to backslash
let mapleader = '\'

" Force not to use arrow key in insert mode
inoremap <Left> <nop>
inoremap <Up> <nop>
inoremap <Right> <nop>
inoremap <Down> <nop>

" Force to use jk instead of <Esc> in insert mode
inoremap <Esc> <nop>
inoremap jk <Esc>

" Reload nvim configuration file(init.vim)
nnoremap <F5> :source ~/.config/nvim/init.vim<CR>
" }}}
