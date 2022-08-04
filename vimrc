" my @j69 vim configuration
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim ~/.vimrc and copy this config
" Launch vim and run :PluginInstall

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/goyo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

# Python settings
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Spaces as tabs
set softtabstop=4 "4 spaces in tab
set autoindent
let python_highlight_all = 1
" Enable 256 colors, useful for gnome-terminal
set t_Co=256

" trim_trailing_white_space_on_save in .py files
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" smart indentation for py files
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax on

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

set clipboard=unnamed
set ruler

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

set guifont=Monaco:h18
colorscheme OceanicNext
