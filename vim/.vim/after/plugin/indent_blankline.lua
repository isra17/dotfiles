vim.cmd [[highlight hl-IblIndent guifg=#073642 gui=nocombine]]

require("ibl").setup {
  indent = {
    char = "┊",
  },
  scope = {
    enabled = false,
  },
  exclude = {
    filetypes = {"help", "nerdtree", "fzf"},
    buftypes = {"terminal"},
  },
}

