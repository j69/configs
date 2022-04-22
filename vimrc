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

set nu "Enable numeric strings
set mouse=a
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

"MacVim´s  Tabs switch by CMD+number
if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif

set guifont=Monaco:h18
colorscheme OceanicNext
