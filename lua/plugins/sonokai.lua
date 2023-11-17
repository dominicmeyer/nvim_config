return {
	{
		"sainnhe/sonokai",
		version = "v0.3.3",
		name = "sonokai",
		config = function()
			vim.cmd("let g:sonokai_style = 'espresso'")
			vim.cmd("colorscheme sonokai")
		end
	},
}
