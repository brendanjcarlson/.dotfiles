vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.filetype.add {
  extension = {
    templ = 'templ',
  },
}

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  { import = 'custom.plugins' },
  { change_detection = {
    notify = false,
  } },
}
