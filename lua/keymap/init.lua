local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

-- Nvim Tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', opts)

-- ToggleTerm
map('n', '<leader>tf', ':ToggleTerm direction=float<CR>', opts)
map('n', '<leader>th', ':ToggleTerm size=8 direction=horizontal<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
