" Use Vim settings, rather than Vi settings (much better!).
set nocompatible

" make backspace perform correctly 
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on
 
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
" Enter { <Return> and automatically adds ending brace, indents linea and
" moves cursor between them (in .js files)
autocmd FileType javascript inoremap {<CR> {<CR>}<Esc><S-o>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-system-copy'
Plugin 'mattn/emmet-vim'

call vundle#end()

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
