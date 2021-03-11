echom "autogroup cloudformation"
augroup cloudformation
  au!
  au BufNewFile,BufRead *.yaml set filetype=cloudformation
augroup END

