
"minimal
set relativenumber number
filetype plugin indent on
syntax on
set backspace=indent,eol,start "backspace with indent
set shiftwidth=4 tabstop=4 softtabstop=4 autoindent smartindent expandtab
set hidden "allow switch buffer without save file
set noswapfile "no generate .swp files
set ignorecase smartcase "para hacer busqueda con minus o mayus si escribes en minuscula.
set encoding=UTF-8
set wildignore=*.ipynb,*/env/*,*/lambda_layer/*,*/python/*,*/.pytest_cache/*,*/tags,*/.idea/*,*/.vscode,*/.pytest_cache/*,*/.editorconfig,*.lock,*/tmp/*,*/dist/*,*/node_modules/*

"to use :find  with current directory files recursively
set path=.,~/dotfiles/vim/,./src/**

color simple-dark

"colorscheme gruvbox
"set background=dark

"Syntastic configs
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0



"inoremap jk <ESC>
map <C-n> :call NERDTreeToggleAndRefresh()<CR>

function NERDTreeToggleAndRefresh()
  :NERDTreeToggle
  if g:NERDTree.IsOpen()
    :NERDTreeRefreshRoot
  endif
endfunction

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "⋆",            
    \ "Staged"    : "•",            
    \ "Untracked" : "∘",            
    \ "Dirty"     : "⁖",            
    \ "Clean"     : "✔︎",                   
    \ }

let g:NERDTreeColorMapCustom = {
    \ "Modified"  : "#528AB3",  
    \ "Staged"    : "#538B54",  
    \ "Untracked" : "#BE5849",  
    \ "Dirty"     : "#299999",  
    \ "Clean"     : "#87939A"   
    \ } 

let g:NERDTreeIgnore = ['^node_modules$','^lambda_layer','^env','^.ipynb_checkpoints']



"LightLineにcoc.nvimのステータスを載せます
let g:lightline = {
  \'active': {
    \'right': [
      \['coc']
    \]
  \},
  \'component_function': {
    \'coc': 'coc#status'
  \}
\}

"Diagnosticsの、左横のアイコンの色設定
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172

"以下ショートカット

"ノーマルモードで
"スペース2回でCocList
nmap <silent> <space><space> :<C-u>CocList<cr>
"スペースhでHover
nmap <silent> <space>h :<C-u>call CocAction('doHover')<cr>
"スペースdfでDefinition
nmap <silent> <space>df <Plug>(coc-definition)
"スペースrfでReferences
nmap <silent> <space>rf <Plug>(coc-references)
"スペースrnでRename
nmap <silent> <space>rn <Plug>(coc-rename)
"スペースfmtでFormat
nmap <silent> <space>fmt <Plug>(coc-format)

map so :source Session.vim <cr>
let g:python_highlight_all=1



" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

" configure nvcode-color-schemes
let g:nvcode_termcolors=256

syntax on
colorscheme nvcode " Or whatever colorscheme you make


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
