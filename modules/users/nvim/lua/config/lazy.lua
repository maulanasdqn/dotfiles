require('lazy-lsp').setup {
  default_config = {
    flags = {
      debounce_text_changes = 150,
    },
  },
  configs = {
    lua_ls = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    },
  },
}
