syntax enable
filetype plugin indent on

set showcmd " Display incomplete commands.
set showmode " Display the mode you're in.
set ruler " Show cursor position.

set expandtab
set shiftwidth=2
set softtabstop=2

execute pathogen#infect()

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
