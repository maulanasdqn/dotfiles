local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lazy-lsp").setup({
	excluded_servers = {
		"ccls",
		"zk",
		"denols",
	},
	default_config = {
		flags = {
			debounce_text_changes = 150,
		},
		capabilities = capabilities,
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
})
