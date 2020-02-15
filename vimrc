set nocompatible " Improved vim
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'tpope/vim-surround'
" Plugin 'valloric/youcompleteme'
call vundle#end()

filetype plugin indent on

syntax on
set number
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set ruler
set showmatch

