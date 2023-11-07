vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("theprimeagen/harpoon")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("m4xshen/autoclose.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ':TSUpdate'
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = '0.1.1',
		requires = {
			{ "nvim-lua/plenary.nvim" }
		}
	})
	use({
		"sainnhe/sonokai",
		as = "sonokai",
		config = function()
			vim.cmd("colorscheme sonokai")
		end
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
			{
				"williamboman/mason.nvim",
				run = ":MasonUpdate",
			},
		}
	})
	use({
		'pwntester/octo.nvim',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
			{ 'nvim-telescope/telescope.nvim' },
			{ 'kyazdani42/nvim-web-devicons' },
		},
		config = function()
			require "octo".setup()
		end
	})
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
end)
