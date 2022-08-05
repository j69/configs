" This is my @j69 vim configuration
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim ~/.vimrc and copy this config
" Launch vim and run :PluginInstall
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/goyo.vim'
Plugin 'mhinz/vim-startify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

# Python settings
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab "Spaces as tabs
set softtabstop=2 "2 spaces in tab
set autoindent

syntax on
set mouse=a  " enable mouse
set scrolloff=7

set termencoding=utf-8
set backspace=indent,eol,start whichwrap+=<,>,[,]
set wrap
set linebreak

" Disable .swp и ~ backup fiels
set nobackup
set noswapfile
set encoding=utf-8
set fileencodings=utf8,cp1251

" Search settings
set ignorecase
set smartcase
set hlsearch
set incsearch

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

set guifont=Monaco:h18
colorscheme OceanicNext
autocmd VimEnter * Goyo
