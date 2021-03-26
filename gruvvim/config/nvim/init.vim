"""Basic configs
"syntax highlighting
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

"""custom bindings for default vim

""basics
"used instead of mapleader so "\" shows up when typed
map <Space> <leader>
"quit
nnoremap <leader>q :q<CR>
"write
nnoremap <leader>w :w<CR>
"open terminal
nnoremap <leader>t :terminal<CR>
"autocomplete
inoremap <M-p> <C-P>

""tabs
nnoremap <M-u> :tabprevious<CR>
nnoremap <M-i> :tabnext<CR>

""vim split
"navigation
nnoremap <M-h> <C-W>h
nnoremap <M-j> <C-W>j
nnoremap <M-k> <C-W>k
nnoremap <M-l> <C-W>l
"open split windows
nnoremap <M-/> <C-W>v
nnoremap <M--> <C-W>s
"resize TODO this is still kinda annoying
nnoremap <M-H> <C-W>>
nnoremap <M-J> <C-W>-
nnoremap <M-K> <C-W>+
nnoremap <M-L> <C-W><
"open file into terminal
nnoremap <leader>o- <C-W>f
nnoremap <leader>o/ <C-W>vgf

"""language support
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

"""vim plugins
call plug#begin('~/.vim/plugged')

"pretty colours
Plug 'morhetz/gruvbox'
"nvim in the browser
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
"plantUML ascii in vim
Plug 'scrooloose/vim-slumlord'
"syntax highlighting for toml
Plug 'cespare/vim-toml'
"maximise a vim split
Plug 'szw/vim-maximizer'
"vim debugger
Plug 'puremourning/vimspector'
"vim fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"ros tools for vim
Plug 'taketwo/vim-ros'
"better quotes, brackets, xml etc
Plug 'tpope/vim-surround'
"better commenting
Plug 'tpope/vim-commentary'
"better git
Plug 'tpope/vim-fugitive'
"linter
Plug 'dense-analysis/ale' 

call plug#end()

"set colour scheme
colorscheme gruvbox
set background=dark

"""bindings for addons
""vim-maximizer binding
nnoremap <M-f> :MaximizerToggle<CR>

""vimspector bindings
nnoremap <leader>ds :call vimspector#Launch()<CR>
"nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
"nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
"nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
"nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
"nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>di :call AddToWatch()<CR>
nnoremap <leader>dx :call vimspector#Reset()<CR>
nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>
nnoremap <S-l> :call vimspector#StepOut()<CR>
nnoremap <S-k> :call vimspector#StepInto()<CR>
nnoremap <S-j> :call vimspector#StepOver()<CR>
nnoremap <leader>d_ :call vimspector#Restart()<CR>
nnoremap <leader>dn :call vimspector#Continue()<CR>
nnoremap <leader>drc :call vimspector#RunToCursor()<CR>
nnoremap <leader>db :call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>dcb :call vimspector#ToggleConditionalBreakpoint()<CR>

""Telescope bindings
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>ftf :tabnew \| Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
