set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-dispatch'
Plugin 'vhdirk/vim-cmake'
Plugin 'wincent/command-t'
Plugin 'vim-scripts/gitignore'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

