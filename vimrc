syntax enable
filetype plugin indent on

execute pathogen#infect()
" The following bundles are infected
" ag, ctrlp.vim, elm.vim, nerdtree, syntastic, vim-airline, vim-bundler,
" vim-endwise, vim-fugitive, vim-mkdir, vim-rails, vim-ruby, vim-elixir
" elm-stuff, vim-mkdir

set nu
set showcmd " Display incomplete commands.
set showmode " Display the mode you're in.
set ruler " Show cursor position.

set expandtab
set shiftwidth=2
set softtabstop=2
set runtimepath^=~/.vim/bundle/ctrlp.vim

set clipboard=unnamedplus
set encoding=utf-8
set list
exec "set listchars=tab:}-,trail:\uB7,nbsp:~,eol:¬,extends:→,precedes:←"

set laststatus=2

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>TS :%s/\s\+$//<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V
nmap <F5> :setlocal spell spelllang=en_us<CR>
let g:ackprg = 'ag --nogroup --nocolor --column'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 2
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_window=0

if executable('ag')
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
endif

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

:map <F10> :NERDTreeToggle
set runtimepath^=~/.vim/bundle/ag
let g:ag_working_path_mode="r:"
syntax enable
filetype plugin indent on

set showcmd " Display incomplete commands.
set showmode " Display the mode you're in.
set ruler " Show cursor position.

set expandtab
set shiftwidth=2
set softtabstop=2
set runtimepath^=~/.vim/bundle/ctrlp.vim

set clipboard=unnamedplus

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
nmap <F5> :setlocal spell spelllang=en_us<CR>
let g:ackprg = 'ag --nogroup --nocolor --column'

if executable('ag')
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
endif

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

:map <F10> :NERDTreeToggle
set runtimepath^=~/.vim/bundle/ag
let g:ag_working_path_mode="r"
colorscheme ron

function! NumberToggle()
  if(&nu == 0)
    set nu
    set nornu
  elseif(&nu == 1)
    set nonu
    set rnu
  endif
endfunc
nnoremap <Leader>tn :call NumberToggle()<cr>
