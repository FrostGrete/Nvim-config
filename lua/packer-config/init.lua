return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'EdenEast/nightfox.nvim' -- Colorscheme
	use 'jiangmiao/auto-pairs'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'kyazdani42/nvim-tree.lua'	-- File tree
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'	-- Providing icon
	use {
		'goolord/alpha-nvim',
		config = function ()
			require'alpha'.setup(require'alpha.themes.startify'.config) -- Startify like plugin
		end
	}
	use { 'Pocco81/auto-save.nvim', config = function()
		require('auto-save')
	end}
	use 'lukas-reineke/indent-blankline.nvim'
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
	use 'romgrk/barbar.nvim'
	use 'nvim-treesitter/nvim-treesitter-context'
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
		})
	end
	})
	use 'ggandor/lightspeed.nvim'
	-- LSP Stuff
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use 'simrat39/symbols-outline.nvim' -- Show function list
	-- Fuzzy Finder
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	-- Debugging
	use 'mfussenegger/nvim-dap'
	use 'rcarriga/nvim-dap-ui'
	use 'nvim-telescope/telescope-dap.nvim'
	use 'theHamsta/nvim-dap-virtual-text'
	use 'mfussenegger/nvim-dap-python'
end)
