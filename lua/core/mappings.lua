vim.g.mapleader = " "

-- NeoTree
vim.keymap.set("n", "<leader>e", ":NeoTreeShowToggle<CR>")

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

-- Other
vim.keymap.set("n", "<c-s>", ":w<CR>")
vim.keymap.set("n", "<leader>x", ":bp | bd #<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("x", "p", '"_dP', { noremap = true, silent = true })
vim.keymap.set("x", "P", '"_dP', { noremap = true, silent = true })

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")

-- Terminal
vim.keymap.set("n", "<leader>t", ":ToggleTerm direction=float<CR>")
