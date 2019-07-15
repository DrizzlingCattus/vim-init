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

" make bottom status bar readable by more functionality
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" ctags plugin
Plugin 'Tagbar'
" ctags file management plugin
Plugin 'xolox/vim-easytags'
" extended standard library for vimscript
" used by vim-easytags plugin
Plugin 'xolox/vim-misc'
" show if code is change, modified, delete in side of number line
Plugin 'airblade/vim-gitgutter'
" file browser
Plugin 'scrooloose/nerdtree'
" draw indent line
Plugin 'Yggdroot/indentLine'
" autocomplete by tab
Plugin 'ervandew/supertab'
" gdb integration
Plugin 'vim-scripts/Conque-GDB'
" provide improved javascript syntax highlight and indent
"Plugin 'pangloss/vim-javascript'
" provide javascript syntax highlight and indent with react jsx
" NOTE: you need to disable Plugin 'pangloss/vim-javascript'
Plugin 'chemzqm/vim-jsx-improve'
" make JSDoc format commenting
Plugin 'heavenshell/vim-jsdoc'

" ~ deprecated ~ it need to lots of memory ~ switch to supertab temporary
"" Autocomplete plugin
"" need to enable python3
"if has('nvim')
"    Plugin 'Shougo/deoplete.nvim', {'do' : ':UpdateRemotePlugins'}
"else
"    Plugin 'Shougo/deoplete.nvim'
"    Plugin 'roxma/nvim-yarp'
"    Plugin 'roxma/vim-hug-neovim-rpc'
"endif

" vim dracula theme
Plugin 'dracula/vim'
" terminal 256color schemes
" Plugin 'wombat256.vim'

call vundle#end()
filetype plugin indent on
" }}}


" [Color Schemes Settings] {{{
"colorscheme wombat256mod
" }}}


" [deoplete.nvim Settings] {{{
" let g:deolete#enable_at_startup = 1
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

" [Editor Snippet files] {{{
" load snippet files
if !empty(glob("~/.config/nvim/local/snippet/javascript.vim"))
    source ~/.config/nvim/local/snippet/javascript.vim
endif
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


" [Indentation Built-in Settings] {{{
" Set indentation options
" c-lang auto indent on
" set cindent
" do auto indenting when starting a new line 
set autoindent
set smartindent
" number of spaces to use for each step of (auto)indent
set shiftwidth=4

" indent binding according to file type
" Note that vim augroup need, cuz it duplicate when sourcing init.vim file
" and duplicating make vim slow
augroup customIndent
    autocmd! customIndent
    autocmd FileType c set tabstop=8|set shiftwidth=8|set expandtab
    autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab
augroup END
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
