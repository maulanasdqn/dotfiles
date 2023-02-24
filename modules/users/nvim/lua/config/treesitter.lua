 vim.opt.runtimepath:append("~/.nvim-treesiter/parsers")

local tree = require('nvim-treesitter.configs')

tree.setup {
  parser_install_dir = "~/.nvim-treesiter/parsers",
  ensure_installed = { "c", "lua", "vim", "help", "tsx", "typescript", "html", "css", "javascript", "nix" },
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
}
