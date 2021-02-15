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
