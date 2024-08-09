call plug#begin(stdpath('data') . '/plugged')

" Lib with helpers func.
Plug 'nvim-lua/plenary.nvim'

" Better string substitution preserving case (:S)
Plug 'tpope/vim-abolish'

" File tree explorer.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Allow seemless navigation between tmux and vim panes.
Plug 'christoomey/vim-tmux-navigator'

" Add some UI element to see indentation.
Plug 'lukas-reineke/indent-blankline.nvim'
"
" Bundle of colorscheme.
Plug 'maxmx03/solarized.nvim'

" FZF for fuzzy browsing and more.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Treesitter for syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autocompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" LSP Support
Plug 'neovim/nvim-lspconfig'
"Plug 'glepnir/lspsaga.nvim'

" ====================
" = Language Support =
" ====================

" Better Rust support.
Plug 'rust-lang/rust.vim'

" Better Vue support.
Plug 'posva/vim-vue'

" Better Terraform support.
Plug 'hashivim/vim-terraform'


call plug#end()
