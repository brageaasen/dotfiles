vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 10

-- Language
vim.cmd("language en_US")

-- Enable smart case search
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override 'ignorecase' if search pattern contains uppercase characters

-- Custom keymaps
-- Split terminal, keeping the current terminal on the top or on the left
vim.keymap.set("n", "<C-x>", ":sp | terminal<CR>", { silent = true }) -- Current terminal on top for horizontal splits
vim.keymap.set("n", "<C-v>", ":vsp | terminal<CR>", { silent = true }) -- Current terminal on the left for vertical splits

-- Move between split terminals/windows
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })

-- Close the current terminal/window
vim.keymap.set("t", "<C-\\>", "<C-\\><C-n>:q!<CR>", { silent = true })

-- Faster typing
vim.keymap.set("n", "<leader>bc", "a{}<Esc>i", { desc = "Input {C}urly Brackets and step inside" })
vim.keymap.set("n", "<leader>bs", "a[]<Esc>i", { desc = "Input [S]quare Brackets and step inside" })
vim.keymap.set("n", "<leader>bp", "a()<Esc>i", { desc = "Input (P)arenthesis Brackets and step inside" })

vim.keymap.set("n", "<C-h>", "0", { desc = "Go to the beginning of the line" })
vim.keymap.set("n", "<C-l>", "$", { desc = "Go to the end of the line" })
vim.keymap.set("x", "<C-h>", "0", { desc = "Go to the beginning of the line" })
vim.keymap.set("x", "<C-l>", "$", { desc = "Go to the end of the line" })

-- Swap 'b' and 'r' functionality
vim.keymap.set({"n", "v"}, "b", "R", { desc = "Enter replace mode" })
vim.keymap.set({"n", "v"}, "r", "b", { desc = "Jump to the beginning of the previous word" })

