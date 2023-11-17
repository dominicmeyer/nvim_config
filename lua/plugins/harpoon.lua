return {
	{
		"theprimeagen/harpoon",
		commit = "c1aebbad9e3d13f20bedb8f2ce8b3a94e39e424a",
		config = function()
			require("harpoon").setup({
				tabline = true
			})

			local mark = require("harpoon.mark")
			local ui = require("harpoon.ui")
			local term = require("harpoon.term")

			vim.keymap.set("n", "<A-Down>", function() ui.nav_next() end)
			vim.keymap.set("n", "<A-Up>", function() ui.nav_prev() end)

			vim.keymap.set("n", "<leader>a", mark.add_file)
			vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
			vim.keymap.set("n", "<leader>ö", function() term.gotoTerminal(1) end)
		end
	},
}
