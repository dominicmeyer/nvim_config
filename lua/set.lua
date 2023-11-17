-- neovim opt see https://neovim.io/doc/user/options.html

-- show line numbers
vim.opt.nu = true

-- activate smartindent, see https://neovim.io/doc/user/indent.html
vim.opt.smartindent = true

-- set the tabstop number
vim.opt.tabstop = 2


-- disable swap files, see https://vi.stackexchange.com/questions/177/what-is-the-purpose-of-swap-files
vim.opt.swapfile = false
-- disable backups, because undodir is used
vim.opt.backup = false
-- where to store the undodir data
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- use undofiles
vim.opt.undofile = true

-- highlight all matches when searching
vim.opt.hlsearch = true
-- highlight all matches whilst typing
vim.opt.incsearch = true

-- enable more colors
vim.opt.termguicolors = true

-- min. number of lines below and above the cursor
vim.opt.scrolloff = 8
-- enables linting and other additions to lines
vim.opt.signcolumn = "yes"
-- marks the current cursor line
vim.opt.cursorline = true
-- includes @ in file names
vim.opt.isfname:append("@-@")

-- miliseconds, after which a cursor is marked as hover
vim.opt.updatetime = 50

-- ?
vim.opt.colorcolumn = "80"

-- the leader key, usefull for commands
vim.g.mapleader = " "

-- defines the foldmethod
vim.opt.foldmethod = "expr"
-- bases the folding on treesitter
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- how many folds are displayed
vim.opt.foldcolumn = "auto"
-- how many folds are closed
vim.opt.foldlevel = 5
