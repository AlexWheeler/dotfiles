" Use Vim settings, rather than Vi settings (much better!).
set nocompatible
 
" Make backspace behave in a sane manner.
set backspace=indent,eol,start
 
" Switch syntax highlighting on
syntax on
 
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin  'tpope/commentary'
Plugin 'kein/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-system-copy'
Plugin 'mattn/emmet-vim'

set clipboard=unnamed
set tabstop=2
set nowrap
set ignorecase
set noswapfile
set number
set cursorline
set showmatch
set shiftwidth=2
set relativenumber

"NERDTree
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg', '.git/']
