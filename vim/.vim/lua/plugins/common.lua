return {
  -- Lib with helpers func.
  {
    "nvim-lua/plenary.nvim",
  },

  -- Better string substitution preserving case (:S)
  {
    "tpope/vim-abolish",
  },

  -- File tree explorer.
  {
    "scrooloose/nerdtree",
    cmd = "NERDTreeToggle"
  },

  -- Allow seemless navigation between tmux and vim panes.
  {
    "christoomey/vim-tmux-navigator",
  },

  -- Add some UI element to see indentation.
  {
    "lukas-reineke/indent-blankline.nvim",
  },

  -- colorscheme.
  {
    "maxmx03/solarized.nvim",
    lazy = false,
  },

  -- FZF for fuzzy browsing and more.
  {
    "junegunn/fzf",
    dir = "~/.fzf",
    name = "fzf",
    build = "./install --all",
  },

  {
    "junegunn/fzf.vim",
  },

  -- Treesitter for syntax
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- LSP Support
  { "neovim/nvim-lspconfig", },

  -- ====================
  -- = Language Support =
  -- ====================

  -- Better Rust support.
  { "rust-lang/rust.vim", },

  -- Better Vue support.
  { "posva/vim-vue", },

  -- Better Terraform support.
  { "hashivim/vim-terraform", },
}
