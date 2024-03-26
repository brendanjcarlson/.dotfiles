vim.g.mapleader = " "                         -- goat leader key dont@me

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- open netrw

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- in visual mode, easily move lines up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-u", "<C-u>zz") -- recenter viewport on half page jumps
vim.keymap.set("n", "<C-d", "<C-d>zz")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

vim.keymap.set("i", "<C-c>", "<Esc>")                           -- idk

vim.keymap.set("n", "Q", "<nop>")                               -- apparently cap q is the worst?

vim.keymap.set("n", "<leader>xx", "<cmd>silent!chmod +x %<CR>") -- make current file executable

vim.keymap.set("n", "<leader>lsr", "<cmd>LspRestart<CR>")       -- restart lsp
vim.keymap.set("n", "<leader>lsi", "<cmd>LspInfo<CR>")          -- show lsp info
