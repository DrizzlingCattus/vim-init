" [Custom Snippet Settings] {{{
augroup customSnippet
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
augroup END
" }}}

