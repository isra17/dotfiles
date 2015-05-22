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
" Plugin 'Valloric/YouCompleteMe' Use AUR package
Plugin 'rust-lang/rust.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden
set history=100 "by default Vim saves your last 8 commands.  We can handle more

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

set incsearch
set hlsearch

set exrc
set secure

set expandtab
set tabstop=2
set shiftwidth=2

set autoread
set noswapfile

autocmd BufWritePre * :%s/\s\+$//e

let g:BASH_Ctrl_j = 'off'
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-n> :NERDTreeToggle<CR>
map <F2> :mksession! ~/vim_session <cr>
map <F3> :source ~/vim_session <cr>
map <leader>b :make<cr>

map cn <esc>:cn<cr>
map cp <esc>:cp<cr>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeChDirMode       = 2
let g:NERDTreeRespectWildIgnore = 1

colorscheme solarized

" Command-T
nnoremap <silent> <C-p> :CommandT<CR>
let g:CommandTMaxHeight = 10
let g:CommandTMatchWindowReverse = 1

" Indent Guide
let g:indent_guides_enable_on_vim_startup = 1

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_enable_balloons = 1

" ycm
let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
let g:ycm_autoclose_preview_window_after_completion = 1

set statusline=%t\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h\ \ %r%y\ \ %#error#%{&mod?'\ \ \ \ \ \ \ \ \ File\ Modified\ \ \ \ \ \ \ \ \ ':''}%*%=%c,%l/%L\ %P
set laststatus=2

" Support mouse
set mouse=a

set wildignore+=__pycache__,*.pyc,node_modules
