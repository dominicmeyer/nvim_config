return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = "v0.9.1",
		build = ':TSUpdate',
		config = function()
			require 'nvim-treesitter.configs'.setup {
				ensure_installed = { "bash", "c", "c_sharp", "cpp", "css", "dart", "dockerfile",
					"gitignore", "go", "graphql", "html", "java", "javascript", "json", "lua",
					"python", "regex", "rust", "sql", "toml", "typescript", "vue", "yaml" },
				sync_install = false,
				auto_install = true,

				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			}
		end
	},
}
