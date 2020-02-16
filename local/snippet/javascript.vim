" [Custom Snippet Settings] {{{
augroup customSnippet
  " When your .vimrc file is sourced twice, the autocommands will appear twice.
  " To avoid this, put this command in your .vimrc file, before defining
  " autocommands:
  "	:autocmd!	" Remove ALL autocommands for the current group.
  autocmd! customSnippet
  " snippet for React class
  autocmd FileType javascript iabbrev reclass.   
	\class BLANK extends React.Component {
	\<CR>constructor(props) {
	\<CR>super(props);
	\<CR>}
	\<CR>
	\<CR>render() {
	\<CR>return (
	\<CR>BLANK
	\<CR>);
	\<CR>}
	\<CR>}jk?BLANK<CR>

  " snippet for React es6 arrow function component 
  autocmd FileType javascript iabbrev refunc.   
	\const BLANK = (props) => {
	\<CR>const [BLANK, BLANK] = useState(BLANK);
	\<CR>
	\<CR>return (
	\<CR><>
	\<CR></>
	\<CR>);
	\<CR>}jk?BLANK<CR>
augroup END
" }}}

augroup HtmlSnippet
  autocmd! HtmlSnippet
  " html default structure snippet
  autocmd FileType html iabbrev hstruct. <!DOCTYPE html>
	\<CR><html>
	\<CR>  <head>
	\<CR>    <meta charset="utf-8">
	\<CR>    <title> BLANK </title>
	\<CR>  </head>
	\<CR>  <body>
	\<CR>  </body>
	\<CR></html>jk?BLANK<CR>{=G``
augroup END
