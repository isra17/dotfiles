set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-git'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-endwise'
"Plugin 'tpope/vim-dispatch'
"Plugin 'vhdirk/vim-cmake'
"Plugin 'gisphm/vim-gitignore'
Plugin 'Yggdroot/indentLine'
"Plugin 'scrooloose/syntastic'
Plugin 'rust-lang/rust.vim'
"Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'
"Plugin 'elixir-lang/vim-elixir'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'soramugi/auto-ctags.vim'
"Plugin 'rizzatti/dash.vim'
"Plugin 'lyuts/vim-rtags'
Plugin 'zchee/deoplete-jedi'
Plugin 'davidhalter/jedi-vim'
"Plugin 'racer-rust/vim-racer'
Plugin 'Shougo/deoplete.nvim'
Plugin 'ledger/vim-ledger'
Plugin 'junegunn/goyo.vim'
Plugin 'posva/vim-vue'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

call vundle#end()            " required
filetype plugin indent on    " required

