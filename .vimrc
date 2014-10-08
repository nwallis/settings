set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set bg=dark
execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme gruvbox

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd VimEnter * NERDTree
