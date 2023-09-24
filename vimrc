set number
set title
set encoding=utf-8

set tabstop=4
set shiftwidth=4
set softtabstop=4
set nohlsearch
" set list listchars=tab:\^\

set clipboard=unnamed,autoselect
inoremap jk <ESC>
let mapleader = " "
filetype plugin indent on

" need to mv tender.nvim/colors/tender.vim ~/.vim/colors
syntax enable
colorscheme tender

set history=150

" WSL clipboard
if !empty($WSL_DISTRO_NAME)
    let s:clip = '/mnt/c/Windows/System32/clip.exe'
    if executable(s:clip)
        augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
        augroup END
    endif
endif

"plugins
"packpath=~/.vim,
