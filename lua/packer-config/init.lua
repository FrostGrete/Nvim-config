return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'lewis6991/impatient.nvim'
	use 'catppuccin/nvim'
	use 'jiangmiao/auto-pairs'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'm-demare/hlargs.nvim'
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
	use "akinsho/toggleterm.nvim"
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
	use 'ggandor/leap.nvim'
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
	end
	}
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
	end
	}
	use {
		'kevinhwang91/nvim-hlslens',
		config = function ()
			require('hlslens').setup()
		end
	}
	use 'MunifTanjim/nui.nvim'
	use {
		"folke/noice.nvim",
		config = function()
			require("noice").setup()
		end
	}
	-- LSP Stuff
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use 'glepnir/lspsaga.nvim'
	use 'folke/trouble.nvim'
	use {
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	}
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'stevearc/aerial.nvim'
	use 'onsails/lspkind.nvim'
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
