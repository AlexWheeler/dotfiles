" Use Vim settings, rather than Vi settings (much better!).
set nocompatible

" Switch syntax highlighting on
filetype off
filetype on
filetype plugin indent on
syntax on
syntax enable
" Enable file type detection and do language-dependent indenting.
" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir='rm -r'
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-system-copy'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'danro/rename.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'thoughtbot/vim-rspec'
Plugin 'gaogao1030/vim-skim'
Plugin 'fatih/vim-go'

call vundle#end()

set noshowmode
set clipboard=unnamed
set expandtab
set shiftwidth=2
set softtabstop=2
set nowrap
set ignorecase
set noswapfile
set relativenumber
set number
set laststatus=2
set backspace=2
set background=light
let mapleader = ","
let g:airline#extensions#tabline#enabled = 0
let g:tmuxline_powerline_separators = 1
let g:airline_theme='molokai'
let g:rspec_command = "!zeus rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>rc :!rubocop "%"<CR>
nnoremap <Leader>g :GoRun<CR>
nnoremap <Leader>b :GoBuild<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
inoremap jk <esc>
