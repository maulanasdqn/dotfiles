local cmp = require('cmp')
local kind = require('lspkind')
local devicons = require('nvim-web-devicons')

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0
               and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(
                   col, col):match("%s") == nil
end

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true),mode, true)
end

  cmp.register_source('devicons', {
    complete = function(self, params, callback)
      local items = {}
      for _, icon in pairs(devicons.get_icons()) do
        table.insert(items, {
          label = icon.icon .. '  ' .. icon.name,
          insertText = icon.icon,
          filterText = icon.name,
       })
      end
      callback({ items = items })
    end,
  })

  cmp.setup({
    formatting = {
      format = function(entry, vim_item)
        vim_item.kind = kind.presets.default[vim_item.kind]
        vim_item.menu = ({
              nvim_lsp = "[LSP]",
              look = "[Dict]",
              buffer = "[Buffer]"
            })[entry.source.name]
      return vim_item
    end
    },
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = {
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = false
      },
      ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
              cmp.select_next_item()
          elseif vim.fn["vsnip#available"](1) == 1 then
              feedkey("<Plug>(vsnip-expand-or-jump)", "")
          elseif has_words_before() then
              cmp.complete()
          else
              fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
          end
      end, {"i", "s"}),
      ["<S-Tab>"] = cmp.mapping(function()
          if cmp.visible() then
              cmp.select_prev_item()
          elseif vim.fn["vsnip#jumpable"](-1) == 1 then
              feedkey("<Plug>(vsnip-jump-prev)", "")
          end
      end, {"i", "s"})
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
    }, 
    {
      { name = 'buffer' },
    })
  })

  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' },
    }, 
    {
      { name = 'buffer' },
    })
  })

  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }

  require('lspconfig')['html'].setup {
    capabilities = capabilities
  }

  require('lspconfig')['astro'].setup {
    capabilities = capabilities
  }

  require('lspconfig')['emmet_ls'].setup {
    capabilities = capabilities
  }

  require('lspconfig')['tailwindcss'].setup {
    capabilities = capabilities
  }

  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
