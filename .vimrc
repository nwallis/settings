filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set completeopt=longest,menuone

let mapleader=","
let g:user_emmet_expandabbr_key='<Tab>'

"Check if silver search is installed on the system
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

"use tab to expand emmet syntax
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"popup completion mapping
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
iabbrev <// </<C-X><C-O>

"resize vertical split
nnoremap <silent> <Leader>. :exe "vertical resize +5"<CR>
nnoremap <silent> <Leader>m :exe "vertical resize -5"<CR>

"map sudow to sudo write in case permissions are not allowed to write
cnoremap sudow w !sudo tee % >/dev/null

syntax on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"enable pathogen functions
execute pathogen#infect()

"set color scheme
set bg=dark
set t_Co=256
colorscheme gruvbox

"beautify shortcuts
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
