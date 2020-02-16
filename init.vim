" ------------------
" Migration Settings
" ------------------
" Vim to Neovim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = $runtimepath
if !empty(glob("~/.vimrc"))
    source ~/.vimrc
endif

let is_mac = has('mac')

" ----------------
" Neovim setting
" ----------------
if is_mac
  let g:python3_host_prog = '/usr/local/bin/python3'
  let g:python_host_prog = '/usr/bin/python2.7'
else
  let g:python3_host_prog = '/usr/local/bin'
  let g:python_host_prog = '/usr/bin/python'
endif
" }}}


" -----------------------
" Vundle plugin manager
" -----------------------
" Additional vundle loading
" main vundle loads in 'vimrc' file
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim

" install package in path, begin(path)
call vundle#begin("~/.config/nvim/bundle")

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" ----------
" Browsing
" ----------
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
" ctags plugin
Plugin 'Tagbar'
" ctags file management plugin
Plugin 'xolox/vim-easytags'
" extended standard library for vimscript
" used by vim-easytags plugin
Plugin 'xolox/vim-misc'
" file browser
Plugin 'scrooloose/nerdtree'
" bind gnu-grep for using grep fgrep egrep ...
Plugin 'vim-scripts/grep.vim'


" ----------
" Editting
" ----------
" make JSDoc format commenting
Plugin 'heavenshell/vim-jsdoc'
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


" ----------
" Language
" ----------
" modern c++ syntax highlight plugin
Plugin 'bfrg/vim-cpp-modern'
" Typescript syntax plugin
Plugin 'leafgarland/typescript-vim'
" provide improved javascript syntax highlight and indent
" This comment is left for historic point with vim-jxs-improve
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
" provide javascript syntax highlight and indent with react jsx
" NOTE: you need to disable Plugin 'pangloss/vim-javascript'
"Plugin 'chemzqm/vim-jsx-improve'
" Jenkinsfile groovy syntax
Plugin 'martinda/Jenkinsfile-vim-syntax'
" python improving indent
Plugin 'Vimjas/vim-python-pep8-indent'
" go
Plugin 'fatih/vim-go'


" -------------
" Third party
" -------------
" Live markdown plugin
Plugin 'shime/vim-livedown'
" gdb integration
Plugin 'vim-scripts/Conque-GDB'


call vundle#end()
" http://vimdoc.sourceforge.net/htmldoc/filetype.html#filetypes
filetype plugin indent on


" ----------------------
" Built-in vim options
" ----------------------
set clipboard+=unnamedplus
" for include-search
set path+=.,/usr/include/*,/usr/include/**/*,**
" do not act like vi
set nocompatible
" Stop the search at the end or start of the file
" that is, disabled search by rotating
set nowrapscan
" Display number of line in side of editor
set number
" Write the contents of the fileon :make like command
" if it has been modified,
set autowrite
" Set column limit and its color
set colorcolumn=80
" 'syntax on' allow you to change highlight color 
syntax on
hi ColorColumn ctermbg=Red guibg=Red


" ------------------
" Deoplete options
" ------------------
let g:deoplete#enable_at_startup = 1


" --------------------
" IndentLine options
" --------------------
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" ---------------------
" Vim-Airline options
" ---------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = "unique_tail"

" setting powerline font
"
" 1. install powerline font package
" 2. apt-get install fonts-powerline
"
" then unicode will be applied
" for getting interface looks good, install source-code-pro font
" tip) must install source-code-pro font
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


" -----------------------
" Vim-easytags Settings
" -----------------------
set tag=./tags;/
" load tags async
let g:easytags_async = 1
" turn off the auto highlight
let g:easytags_auto_highlight = 0
" can trace struct member
let g:easytags_include_members = 1
" load this project tags first. if not, load global tags
let g:easytags_dynamic_files = 1


" -------------------
" Grep.vim options 
" -------------------
" skip files when use 'Rgrep'
let g:Grep_Skip_Files = '*~ tags cscope.out'
let g:Grep_OpenQuickfixWindow = 1
let g:Grep_Default_Options = '-rn'


" -------------------
" ConqueGDB options
" -------------------
" 1: strip color after 200 line, 2: always with color
let g:ConqueTerm_Color=2            
" close conque when program ends running
let g:ConqueTerm_CloseOnEnd=1
" display warning message if conqueTerm is configed incorrect
let g:ConqueTerm_StartMessages=0


" -------------------
" vim-jsdoc options
" -------------------
" enable es6 arrow function for jsdoc
let g:jsdoc_enable_es6 = 1
" allow promt for interative input
let g:jsdoc_allow_input_prompt = 1
" promt for function description
let g:jsdoc_input_description = 1
" set param description seperator
let g:jsdoc_param_description_seperator = ' '


" ------------------
" External scripts
" ------------------
source ~/.config/nvim/local/vim-utils/init.vim
source ~/.config/nvim/local/autocmd/init.vim
source ~/.config/nvim/local/indent/init.vim
source ~/.config/nvim/local/snippet/init.vim



" ---------------------------
" Special character mapping
" ---------------------------
let mapleader = '\'


" -------------
" Keybindings
" -------------

" vim-go shortcuts
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nnoremap <leader>t :GoTest<CR>

" Force not to use arrow key in insert mode
inoremap <Left> <nop>
inoremap <Up> <nop>
inoremap <Right> <nop>
inoremap <Down> <nop>

" Force to use jk instead of <Esc> in insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" Quickfix window commands
nnoremap <C-n> :cnext<CR>
nnoremap <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" binding :jsdoc key, generate JSdoc in front of function
nnoremap <silent> <C-l> <Plug>(jsdoc)
" Open markdown preview
nnoremap gm :LivedownToggle<CR>
" Grep pattern
nnoremap <silent> <F9> :Rgrep<CR>
" Open tagbar window
nnoremap <F8> :TagbarToggle<CR>
" Open nerdtree browsing window
nnoremap <Leader>nt <ESC>:NERDTreeToggle<CR>

" Save to playground vim file
nnoremap <leader>vim :call SaveToPlayground("~/.config/nvim/playground/")<cr>
" wrapping vim comment title
nnoremap <leader>wv :call WrapVimTitle("-", "-")<CR>
" Open init.vim
nnoremap <leader>init :sp ~/.config/nvim/init.vim<cr>

" Reload current vim script
nnoremap <F5> :source %<cr>
