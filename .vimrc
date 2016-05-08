filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set bg=dark
set smartindent
set completeopt=longest,menuone
set t_Co=256

let mapleader=","

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
iabbrev <// </<C-X><C-O>

nnoremap <silent> <Leader>. :exe "vertical resize +5"<CR>
nnoremap <silent> <Leader>m :exe "vertical resize -5"<CR>

execute pathogen#infect()
syntax on
colorscheme gruvbox

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd VimEnter * NERDTree
