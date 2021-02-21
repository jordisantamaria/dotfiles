" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Tab> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
map sq <C-w>c
"zoom window
noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=

imap jj <esc>


"Abbreviations
ab fa false
ab tr true
ab re return

command! -nargs=1 -complete=dir Rmdir !rm -rd  <args>
command! -nargs=1 Touch e %:h/<args>

" use <tab> in coc for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <space>gl :diffget //2<CR>
nmap <space>gr :diffget //3<CR>


"map surround with . repreat
silent! call repeat#set("\<Plug>tpope/vim-surround", v:count)

