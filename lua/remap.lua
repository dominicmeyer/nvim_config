-- In Terminal Escape for cancelling
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Enable formatting and writing on <C-f>
vim.keymap.set({ "n", "i" }, "<C-f>", function()
	vim.lsp.buf.format({ async = false })
	vim.cmd("w")
end)

vim.keymap.set("n", "<C-p>", function()
	vim.cmd("Explore")
end)
