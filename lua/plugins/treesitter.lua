return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = "v0.9.2",
		build = ':TSUpdate',
		config = function()
			require 'nvim-treesitter.configs'.setup {
				sync_install = false,
				auto_install = true,
				ignore_install = { "html" },

				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			}
		end
	},
}
