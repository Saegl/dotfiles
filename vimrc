set nocompatible " Improved vim
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'tpope/vim-surround'
" Plugin 'valloric/youcompleteme'
" Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
" Plugin 'raimondi/delimitmate'
Plugin 'jiangmiao/auto-pairs'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:ycm_show_diagnostics_ui = 0
let g:ycm_auto_trigger = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
set completeopt-=preview

filetype plugin indent on

syntax on
set number
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
" set ruler
" set showmatch
set nowrap

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set selection=exclusive  " Normal cursor in normal mode
set virtualedit+=onemore

set laststatus=2

