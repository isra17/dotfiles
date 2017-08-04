source ~/.vim/bundle.vim

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
set softtabstop=0
set tabstop=2
set shiftwidth=2
set smarttab

set breakindent
set showbreak=\\\\\

set autoread
set noswapfile

set infercase

let mapleader = ' '

autocmd BufWritePre * :%s/\s\+$//e

let g:BASH_Ctrl_j = 'off'
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

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

" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" fzf
" Mapping selecting mappings
nnoremap <silent> <C-p> :GFiles<CR>

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep('git grep --line-number '.shellescape(<q-args>), 0, <bang>0)


" Indent Guide
let g:indent_guides_enable_on_vim_startup = 1

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_enable_balloons = 1

" ycm
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" auto-ctags
let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git', '.svn']

set statusline=%t\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h\ \ %r%y\ \ %#error#%{&mod?'\ \ \ \ \ \ \ \ \ File\ Modified\ \ \ \ \ \ \ \ \ ':''}%*%=%c,%l/%L\ %P
set laststatus=2

" Support mouse
set mouse=a

" Rust
set hidden
let g:racer_cmd = "/Users/isra17/.cargo/bin/racer"
let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 1

set wildignore+=__pycache__,*.pyc,node_modules,_build,deps

function! Csc()
  cscope find c <cword>
  copen
endfunction
command! Csc call Csc()

map <leader>] :Csc<cr>

if has("cscope")
  if filereadable("cscope.out")
    cs add cscope.out
  endif
endif

source ~/.vimrc.local
