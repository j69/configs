" @j69 vim config
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim ~/.vimrc and save and run :PluginInstall
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                  " be iMproved, required
filetype off                      " required
set rtp+=~/.vim/bundle/Vundle.vim " set path to include Vundle
call vundle#begin()               " initialize Vundle

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/goyo.vim'             " zen mode for writing
Plugin 'vim-airline/vim-airline'       " cool statusbar
Plugin 'mg979/vim-visual-multi'        " Select like in in Sublime/VSC
Plugin 'mhinz/vim-startify'            " Fancy Start screen

call vundle#end()            " required
filetype plugin indent on    " required

set mouse=a                     " enable mouse
set nu                          " enable numeric strings
set nobackup
set noswapfile
set guifont=Monaco:h18
colorscheme OceanicNext
" autocmd VimEnter * Goyo       " autorun Goyo plugin when start               
