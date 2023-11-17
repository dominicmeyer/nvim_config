return {
	{
		"mbbill/undotree",
		version = "rel_6.1",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end
	}
}
