local highlight = {
  "Whitespace",
  "CursorColumn",
}

require("ibl").setup {
  indent = { highlight = highlight, char = "" },
  whitespace = {
    highlight = highlight,
    remove_blankline_trail = false,
  },
  scope = { enabled = false },
  exclude = {
    filetypes = {"help", "nerdtree", "fzf"},
    buftypes = {"terminal"},
  },
}
