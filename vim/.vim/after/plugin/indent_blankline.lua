vim.cmd [[highlight IndentBlanklineIndent guifg=#073642 gui=nocombine]]

require("indent_blankline").setup {
  char = "┊",
  char_highlight_list = {"IndentBlanklineIndent"},
  show_first_indent_level = false,
  filetype_exclude = {"help", "nerdtree", "fzf"},
  buftype_exclude = {"terminal"},
}

