local set = vim.opt

set.number = true
set.cursorline = true

set.shiftwidth = 4
set.softtabstop = 4
set.smarttab = true
set.tabstop = 4
set.smartindent = true

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.wrap = false
set.fileencoding = 'utf-8'
set.scrolloff = 4
set.termguicolors = true

set.signcolumn = 'auto'
set.laststatus = 3
set.cmdheight = 0

vim.api.nvim_command "colorscheme catppuccin-frappe" -- mocha, macchiato, frappe, latte
