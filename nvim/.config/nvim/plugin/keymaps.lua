local set = vim.keymap.set

set('n', '<leader>pv', vim.cmd.Ex)                            -- open netrw

set('v', 'J', ":m '>+1<CR>gv=gv")                             -- move selected lines up
set('v', 'K', ":m '<-2<CR>gv=gv")                             -- move selected lines down

set('n', '<C-u>', '<C-u>zz')                                  -- recenter viewport after half page jump up
set('n', '<C-d>', '<C-d>zz')                                  -- recenter viewport after half page jump down

set({ 'n', 'v' }, '<leader>y', [["+Y]])                       -- yank line/selection to system clipboard

set('n', 'Q', '<nop>')                                        -- unbind Q in normal mode

set('n', '<leader>xx', ':silent !chmod +x % > /dev/null<CR>') -- make current file executable (useful for scripting)
set('n', '<leader>zx', ':silent !chmod -x % > /dev/null<CR>') -- make current file non-executable (useful for typos)

set('n', '<leader>lsr', '<cmd>LspRestart<CR>')                -- sometimes you gotta just restart that lsp... (looking at you tsserver)

set('n', '<leader>mk', ':silent !make<CR>')                   -- run default make target

set('n', '<leader>fw', '<cmd>:w<CR>')                         -- im lazy
