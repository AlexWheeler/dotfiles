" Use Vim settings, rather than Vi settings (much better!).
set nocompatible
" Switch syntax highlighting on
filetype off
" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir='rm -r'
" Change cursor shape between insert and normal mode in iTerm2.app

if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\" " Vertical bar in insert mode in Tmux session
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\" " Block in normal mode in Tmux session

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'danro/rename.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'thoughtbot/vim-rspec'
Plugin 'gaogao1030/vim-skim'
Plugin 'fatih/vim-go'
Plugin 'jgdavey/tslime.vim'
Plugin 'rking/ag.vim'

call vundle#end()

syntax enable
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
set noshowmode
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
set fileencoding=utf-8
let mapleader = ","
let g:airline#extensions#tabline#enabled = 0
let g:tmuxline_powerline_separators = 1
let g:airline_theme='molokai'
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
"let g:rspec_command = "!zeus rspec {spec}"
let g:rspec_command = 'call Send_to_Tmux("zeus rspec {spec}\n")'
"instruct ag to start searching from project root
let g:ag_working_path_mode="r"
inoremap jk <esc>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>l :call RunLastSpec()<CR>
nmap <Leader>rts <Plug>SetTmuxVars
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>rc :!rubocop "%"<CR>
nnoremap <Leader>g :GoRun<CR>
nnoremap <Leader>b :GoBuild<CR>
"toggle relativenumber
nnoremap <silent> <leader>l :exec &number == 0 ? "set number norelativenumber" : "set relativenumber nonumber"<cr>
nmap <leader>v :tabedit $MYVIMRC<CR>
"wrap commit message at 72 characters
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd BufWritePre * :%s/\s\+$//e
