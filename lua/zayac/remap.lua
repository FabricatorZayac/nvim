local map = vim.keymap.set

map("n", ";", ":")

-- map("v", "J", ":m '>+1<CR>gv=gv")
-- map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("x", "<leader>p", "\"_dp")

map("t", "<Esc>", "<C-\\><C-n>")

-- yank into clipboard
map("n", "<leader>y", "\"+y")
map("v", "<leader>y", "\"+y")

map("n", "<leader>p", "\"+p")

map("n", "<C-l>", "<C-w>l")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
