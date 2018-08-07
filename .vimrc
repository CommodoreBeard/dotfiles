set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme koehler
set list listchars=tab:»·,trail:·
set nu " line numbers
set backspace=2 " make backspace work like most other apps
set clipboard=unnamed   " use the system clipboard
set backupcopy=yes " disable save write to allow webpack to properly detect file changes
set switchbuf=usetab,newtab
set hlsearch

set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoread
set noswapfile
syntax on

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null
