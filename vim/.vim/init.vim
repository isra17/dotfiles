" Load plugins
runtime ./plugs.vim

"=============================================
"======= Simple, vanilla configuration =======
"=============================================

" Line numbers
set number
" Hide sign column
set signcolumn=no

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" By default Vim saves your last 8 commands.  We can handle more
set history=100

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on.
syntax on

" Highlight search words.
set incsearch
set hlsearch

" Set tab settings (Expand to 2 spaces)
set expandtab
set softtabstop=0
set tabstop=2
set shiftwidth=2
set smarttab

" Indent long lines.
set breakindent
set showbreak=\\\\\

" Auto reload changed file.
set autoread
" Disable swap and backup files (<FILE>~)
set noswapfile
set nobackup
set nowritebackup

" Colorscheme!
set termguicolors
set pumblend=5

" Status line
set statusline=%t\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h\ \ %r%y\ \ %#error#%{&mod?'\ \ \ \ \ \ \ \ \ File\ Modified\ \ \ \ \ \ \ \ \ ':''}%*%=%c,%l/%L\ %P
set laststatus=2

" Support mouse
set mouse=a

" Ignore those files.
set wildignore+=__pycache__,*.pyc,node_modules,_build,deps

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Keep lines offset when scrolling.
set scrolloff=5

"=============================================
"============= NVIM configuration ============
"=============================================

" nvim use its own virtualenv.
let g:python3_host_prog = $HOME.'/.pyenv/versions/nvim/bin/python'

"=============================================
"=========== Mapping configuration ===========
"=============================================
runtime ./maps.vim

"=============================================
"=========== Autocmd configuration ===========
"=============================================

" Strip whitespaces at end of lines.
autocmd BufWritePre * :%s/\s\+$//e

" Load lua config
lua require('config')
