local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

-- Basic Nvim command
map('n', '<esc>', ':noh<CR>', opts)

-- Nvim Tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fr', ':Telescope oldfiles<CR>', opts)

-- Buffer
map('n', '.,', ':BufferPrevious<CR>', opts)
map('n', '..', ':BufferNext<CR>', opts)
map('n', '.<', ':BufferMovePrevious<CR>', opts)
map('n', '.>', ':BufferMoveNext<CR>', opts)
map('n', '.1', ':BufferGoto 1<CR>', opts)
map('n', '.2', ':BufferGoto 2<CR>', opts)
map('n', '.3', ':BufferGoto 3<CR>', opts)
map('n', '.4', ':BufferGoto 4<CR>', opts)
map('n', '.5', ':BufferGoto 5<CR>', opts)
map('n', '.6', ':BufferGoto 6<CR>', opts)
map('n', '.7', ':BufferGoto 7<CR>', opts)
map('n', '.8', ':BufferGoto 8<CR>', opts)
map('n', '.9', ':BufferGoto 9<CR>', opts)
map('n', '.0', ':BufferLast<CR>', opts)
map('n', '.c', ':BufferClose<CR>', opts)

-- Navigating
map('n', '<C-H>', '<C-W>h', opts)
map('n', '<C-J>', '<C-W>j', opts)
map('n', '<C-K>', '<C-W>k', opts)
map('n', '<C-L>', '<C-W>l', opts)

-- Debugging
map('n', '<leader>b', ':DapToggleBreakpoint<CR>', opts)
map('n', '<F5>', ':DapContinue<CR>', opts)
map('n', '<F10>', ':DapStepOver<CR>', opts)
map('n', '<F11>', ':DapStepInto<CR>', opts)
map('n', '<F12>', ':DapStepOut<CR>', opts)

-- GitSigns
map('n', '<leader>hp', ':Gitsigns preview_hunk<CR>', opts)
map('n', '<leader>hb', ':Gitsigns blame_line<CR>', opts)
map('n', '<leader>tb', ':Gitsigns toggle_current_line_blame<CR>', opts)
map('n', '<leader>hd', ':Gitsigns diffthis<CR>', opts)
