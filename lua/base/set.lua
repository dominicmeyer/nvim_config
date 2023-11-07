vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.smartindent = true
vim.opt.tabstop = 2

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldcolumn = "5"
vim.opt.foldlevel = 5

vim.filetype.add({
  extension = {
    curl = "sh"
	}
})
vim.api.nvim_create_user_command("SendRequest",
  function ()
    if string.find(vim.fn.expand('%'), ".*.curl$") == nil then print("Filetype not supported") return end

  	vim.cmd("rightb vs")
		vim.cmd("enew")
		vim.cmd("set filetype=json")
		vim.cmd("read !sh #")
  end, {})
