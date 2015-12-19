syntax enable
filetype plugin indent on

set showcmd " Display incomplete commands.
set showmode " Display the mode you're in.
set ruler " Show cursor position.

set expandtab
set shiftwidth=2
set softtabstop=2
set runtimepath^=~/.vim/bundle/ctrlp.vim

execute pathogen#infect()

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V
let g:ackprg = 'ag --nogroup --nocolor --column'

if executable('ag')
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
endif
    
colorscheme slate

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

:map <F10> :NERDTreeToggle
