local null_ls = require("null-ls")
local prettier = require("prettier")

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format({async = true})")
    end

    if client.resolved_capabilities.document_range_formatting then
      vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
    end
  end,
})

prettier.setup({
  bin = 'prettier',
  filetypes = {
    "css",
    "graphql",
    "html",
    "vue",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
