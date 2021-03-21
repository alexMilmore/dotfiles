"syntac highlighting
syntax on

"remove error sounds
set noerrorbells
"tab displayed as 4 spaces
set tabstop=4 softtabstop=4
"shift command shifts 4 spaces
set shiftwidth=4
"convert tabs to spaces
set expandtab
"auto indent
set smartindent
"line numbers
set nu

"custom bindings
nnoremap <C-J> :tabprevious<CR>
nnoremap <C-K> :tabnext<CR>

"vim plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
set background=dark
