vim.opt.guicursor = ""        -- keep that cursor fat babayyyy

vim.opt.nu = true             -- line nums
vim.opt.relativenumber = true -- rel nums for easier jumping around

vim.opt.tabstop = 4           -- 8 space tabs are just insane
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true   -- use spaces over tabs
vim.opt.smartindent = true -- auto indent for code blocks

vim.opt.wrap = false       -- line wrap sucks

vim.opt.swapfile = false   -- some undotree stuff
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false      -- dont highlight the line when replacing
vim.opt.incsearch = true      -- just highlight the match

vim.opt.termguicolors = true  -- pretty colors

vim.opt.scrolloff = 8         -- keep the cursor from hitting edge of screen while scrolling

vim.opt.signcolumn = "yes"    -- make space for warnings/errors/etc next to line nums

vim.opt.isfname:append("@-@") -- i have no idea

vim.opt.updatetime = 50       -- giga refresh speed

vim.opt.colorcolumn = "120"   -- make sure i dont write crazy long lines
