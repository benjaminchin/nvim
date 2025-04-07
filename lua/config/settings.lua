-- Set tab to 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Set clipboard
vim.opt.clipboard = 'unnamedplus'

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.wrap = true

-- Enable if using nerd font
vim.g.have_nerd_font = true

-- Window split options
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live
vim.opt.inccommand = 'split'

-- Minimum number of lines to keep above and below cursor
vim.opt.scrolloff = 10

-- Case insensitive searching unless \C OR one or more capital letters in search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.cursorline = true

