return {
	{
		"tpope/vim-fugitive",
		version = "3.7",
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
		end
	},
}
