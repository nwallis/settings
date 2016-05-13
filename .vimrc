filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set completeopt=longest,menuone

let mapleader=","
let g:user_emmet_expandabbr_key='<Tab>'

if executable('ag')
  let g:ctrlp_use_caching = 0
  set grepprg=ag\ --nogroup\ --nocolor
  if has('win32unix') || has('win32') || has('win64')
    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
  else
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  endif
else
  autocmd VimEnter * NERDTree
endif

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
iabbrev <// </<C-X><C-O>

nnoremap <silent> <Leader>. :exe "vertical resize +5"<CR>
nnoremap <silent> <Leader>m :exe "vertical resize -5"<CR>

cnoremap sudow w !sudo tee % >/dev/null

syntax on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

execute pathogen#infect()

set bg=dark
set t_Co=256
colorscheme gruvbox
