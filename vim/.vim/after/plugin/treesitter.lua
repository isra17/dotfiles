require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "cpp",
    "css",
    "dockerfile",
    "go",
    "html",
    "javascript",
    "json",
    "make",
    "python",
    "rust",
    "toml",
    "vue",
    "yaml",
  },
  highlight = {
    enable = true,
  },
}
