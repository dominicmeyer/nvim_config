return {
	{
		"nvim-telescope/telescope.nvim",
		version = '0.1.4',
		dependencies = {
			{
				"nvim-lua/plenary.nvim",
				version = "v0.1.4"
			},
			{
				"BurntSushi/ripgrep",
				version = "13.0.0"
			}
		},
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
			vim.keymap.set("n", "<C-pf>", builtin.git_files, {})
			vim.keymap.set("n", "<leader>pd", builtin.diagnostics, {})
		end
	},
}
