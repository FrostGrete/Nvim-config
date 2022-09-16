return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim' -- Colorshceme
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
	use 'lukas-reineke/indent-blankline.nvim'
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
	use 'romgrk/barbar.nvim'
	use 'tpope/vim-surround'
	-- LSP Stuff
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	-- Fuzzy Finder
	use 'nvim-lua/plenary.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'}  }
	}
end)
