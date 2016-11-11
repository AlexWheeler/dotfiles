set nocompatible
" Switch syntax highlighting on
filetype off
filetype on
filetype plugin indent on "load filetype dependent indent files
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
Plugin 'tpope/vim-fireplace'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'henrik/vim-ruby-runner'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'guns/vim-clojure-static'
call vundle#end()

syntax enable
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
set noshowmode
set expandtab
set noshowmode
set clipboard=unnamed
set shiftwidth=2
set expandtab "tabs are spaces
set tabstop=2 "number of spaces in tab
set softtabstop=2 "number of spaces in tab when editing
set nowrap
set ignorecase
set noswapfile
set relativenumber
set number " show line number
set laststatus=2
set backspace=2
set background=light
set fileencoding=utf-8
"Rainbow Parentheses always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"Open man pages in vim with :Man
runtime! ftplugin/man.vim
set showmatch " highlight matching [{()}]
let mapleader = ","
let g:clojure_fuzzy_indent = 1
let g:airline#extensions#tabline#enabled = 0
let g:tmuxline_powerline_separators = 1
let g:airline_theme='molokai'
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
let g:rspec_command = "!zeus rspec {spec}"
let g:rspec_command = 'call Send_to_Tmux("zeus rspec {spec}\n")'
"instruct ag to start searching from project root
let g:ag_working_path_mode="r"
inoremap jk <esc>
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>l :call RunLastSpec()<CR>
nmap <Leader>rts <Plug>SetTmuxVars
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
nnoremap <Leader>e :Explore<CR>
"split pane and open file explorer
nnoremap <Leader>s :split <bar> :Explore<CR>
"nnoremap <Leader>rc :!rubocop "%"<CR>
nnoremap <Leader>g :GoRun<CR>
nnoremap <Leader>b :GoBuild<CR>
"toggle relativenumber
nnoremap <silent> <leader>l :exec &number == 0 ? "set number norelativenumber" : "set relativenumber nonumber"<cr>
nmap <leader>v :tabedit $MYVIMRC<CR>
"wrap commit message at 72 characters
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd BufWritePre * :%s/\s\+$//e

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.linenr = '☞  '
nmap <Leader>go :GoRun <CR>
nmap <Leader>gp :GoPlay <CR>
inoremap jk <esc>


