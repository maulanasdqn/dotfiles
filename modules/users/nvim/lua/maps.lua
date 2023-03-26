local map = vim.api.nvim_set_keymap

default_options = {noremap = true, silent = true}
expr_options = {noremap = true, expr = true, silent = true}

map("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = " "
          

map("n", "<C-s>", "<cmd>Telescope find_files<CR>", {noremap = true})
map("n", "<C-t>", "<cmd>Telescope buffers<CR>", {noremap = true})
map("n", "<C-g>", "<cmd>NvimTreeToggle<CR>", {noremap = true})
map("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_next<CR>", {noremap = true})
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", {noremap = true})
map("n", "<C-k>", "<cmd>Lspsaga signature_help<CR>", {noremap = true})
map("n", "gh", "<cmd>Lspsaga Lspsaga lsp_finder<CR>", {noremap = true})

vim.cmd([[let g:floaterm_keymap_toggle = '<F12>']])
