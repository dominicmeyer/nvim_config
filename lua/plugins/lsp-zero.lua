return {
	{
		'williamboman/mason.nvim',
		version = "1.8.3"
	},
	{
		'williamboman/mason-lspconfig.nvim',
		version = "v1.22.0",
		config = function()
			local lsp_zero = require('lsp-zero')
			lsp_zero.extend_lspconfig()

			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({ buffer = bufnr })
				vim.keymap.set({ "n", "i" }, "<C-f>", function()
					vim.lsp.buf.format({ async = false })
					vim.cmd("w")
				end)
			end)

			vim.lsp.set_log_level('debug')

			require('mason').setup({})
			require('mason-lspconfig').setup({
				ensure_installed = { "dockerls", "bashls", "volar", "yamlls", "jsonls", "pylsp",
					"marksman", "rust_analyzer", "tsserver", "emmet_ls", "html", "lua_ls" },
				handlers = {
					lsp_zero.default_setup,
				},
			})
		end
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x'
	},
	{
		'neovim/nvim-lspconfig',
		commit = "29939f6f07bc0f3b9fc563fbfbee06ac88c8c439"
	},
	{
		'hrsh7th/cmp-nvim-lsp',
		commit = "44b16d11215dce86f253ce0c30949813c0a90765"
	},
	{
		'hrsh7th/nvim-cmp',
		version = "v0.0.1"
	},
	{
		'L3MON4D3/LuaSnip',
		version = "v2.1.0"
	},
}
