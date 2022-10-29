local saga = require("lspsaga")

saga.init_lsp_saga()

local map = vim.keymap.set

map("n", "gh", ":Lspsaga lsp_finder<CR>", { silent = true })
map("n", "K", ":Lspsaga hover_doc<CR>", { silent = true })
map("n", "<leader>ca", ":Lspsaga code_action<CR>", { silent = true })
map("n", "gr", ":Lspsaga rename<CR>", { silent = true })
map("n", "gd", ":Lspsaga peek_definition<CR>", { silent = true })
map("n", "<leader>cd", ":Lspsaga show_line_diagnostics<CR>", { silent = true })
map("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", { silent = true })
map("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", { silent = true })
map("n", "<leader>o", ":AerialToggle<CR>", { silent = true })
map("n", "<leader>lf", ":lua vim.lsp.buf.format()<CR>", { silent = true })
