local set = vim.keymap.set

set('n', '<leader>pv', vim.cmd.Ex) -- open netrw

set('v', 'J', ":m '>+1<CR>gv=gv") -- move selected lines up
set('v', 'K', ":m '<-2<CR>gv=gv") -- move selected lines down

set('n', '<C-u>', '<C-u>zz') -- recenter viewport after half page jump up
set('n', '<C-d>', '<C-d>zz') -- recenter viewport after half page jump down

set({ 'n', 'v' }, '<leader>y', [["+Y]]) -- yank line/selection to system clipboard

set('n', 'Q', '<nop>') -- unbind Q in normal mode

set('n', '<leader>xx', ':silent !chmod +x % > /dev/null<CR>') -- make current file executable (useful for scripting)

set('n', '<leader>lsr', '<cmd>LspRestart<CR>') -- sometimes you gotta just restart that lsp... (looking at you tsserver)

set('n', '<leader>mk', '<cmd>:make<CR>') -- run default make target

set('n', '<leader>ww', '<cmd>:w<CR>') -- easier save
set('n', '<leader>wa', '<cmd>:wall<CR>') -- easier save
