local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- mappings
kmap = vim.keymap

-- Change leader to a comma
vim.g.mapleader = ','
kmap.set("n","h","h")

-- Dvorak remaps
kmap.set("n", "t", "j")
kmap.set("n", "n", "k")
kmap.set("n", "s", "l")

kmap.set("n", "H", "H")
kmap.set("n", "T", "J")
kmap.set("n", "N", "K")
kmap.set("n", "S", "L")

kmap.set("n", "l", "n")
kmap.set("n", "j", "t")
kmap.set("n", "k", "s")


kmap.set("n", "L", "N")
kmap.set("n", "J", "T")
kmap.set("n", "K", "S")

-- Split navigation using CTRL
kmap.set("n", "<c-h>", "<c-w>h")
kmap.set("n", "<c-t>", "<c-w>j")
kmap.set("n", "<c-n>", "<c-w>k")
kmap.set("n", "<c-s>", "<c-w>l")

-- NvimTree
kmap.set('n', '<leader>n', ':NvimTreeToggle<CR>')           -- open/close

-- reload configuration without saving
kmap.set('n', '<leader>r', 'so %<CR>')

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
