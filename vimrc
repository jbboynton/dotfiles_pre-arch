" Vundle
set nocompatible     " Required by vundle
filetype off         " Required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" ------------------------
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'mileszs/ack.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'othree/html5.vim.git'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby'


" Color Scheme Plugins
Plugin 'arcticicestudio/nord-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enhanced % matching
runtime macros/matchit.vim

" Leader key mappings
" -------------------
let mapleader=","
map <Leader>rs :!bundle exec rspec % --format documentation<CR>
map <Leader>r :w<CR>:call RunNearestSpec()<CR>

" Deal with swap files
set swapfile
set directory=/tmp

" tmux
" ----
autocmd VimResized * :wincmd =

" Appearence
" ----------
set t_Co=256         " use 256 colors
set number           " show line numbers
syntax on            " turn on syntax highlighting
syntax enable        " ... and enable it? Idk, copypasting from boilerplate
" colorscheme nord

" Configure ack.vim to use ag
let g:ackprg = 'ag --nogroup --column'

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Lightline
let g:lightline = {
\ 'colorscheme': 'seoul256',
\ 'component': {
\   'readonly': '%{&readonly?"×":""}',
\   'percent': "" }
  \ }

" Restore :E as a shortcut for :Explore
" This has been stolen from here: http://stackoverflow.com/a/14367507u
" So thankful that people this smart are willing to post their knowledge on SO.
command! -nargs=* -bar -bang -count=0 -complete=dir E Explore <args>

" Movement
" --------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Text Editing
" ------------
set history=500      " number of commands vim remembers
set hidden           " allow text buffers to exist in the background
" set nocompatible     " use vim settings, not vi
set encoding=utf-8   " self explanatory
set autoread         " reload files modified outside vim
" set showcmd          " show incomplete commands at the bottom
set laststatus=2     " always show the status line
set noshowmode

" Tabs and Whitespace
" -------------------
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nowrap

" Editor Config
" -------------
set textwidth=80     " show 80 characters
set number
set numberwidth=5
" set relativenumber
set shortmess=a
highlight LineNr ctermfg=251 ctermbg=236
highlight StatusLine ctermfg=232
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" File messages and options
set shortmess=atI
set wildmode=list:longest
set wildignore=*.o,*.obj,*~,*.swp

