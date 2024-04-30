-- indentation
local indent = 2
vim.opt.expandtab = true
vim.o.tabstop = indent

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.spell = true
vim.opt.spelllang = 'en_us'

vim.opt.background = 'dark'


-- hide mode provided by vim. Lualine will show mode instead
vim.opt.showmode = false

-- show leading spaces and other hidden chars
vim.opt.list = true
vim.opt.listchars:append("lead:⋅,extends:…,precedes:…,nbsp:␣")

-- Keep 8 lines of scrolloff visible where possible. (Shows next 8 lines as
-- approaching the bottom.)
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Make floating windows slightly transparent
vim.opt.winblend = 10
