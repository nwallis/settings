set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set bg=dark
set completeopt=longest,menuone
set t_Co=256

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
iabbrev <// </<C-X><C-O>

execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme gruvbox

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd VimEnter * NERDTree
