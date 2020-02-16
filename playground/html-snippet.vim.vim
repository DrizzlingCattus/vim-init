augroup HtmlSnippet
  autocmd! HtmlSnippet
  " html default structure snippet
  autocmd FileType html,HTML iabbrev hstruct.
    \<!DOCTYPE html>
    \<CR><html>
    \<CR>  <head>
    \<CR>    <meta charset="utf-8">
    \<CR>    <title> BLANK </title>
    \<CR>  </head>
    \<CR>  <body>
    \<CR>  </body>
    \<CR></html>jk?BLANK<CR>

augroup END
