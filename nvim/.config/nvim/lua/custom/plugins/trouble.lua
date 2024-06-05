--[[
-- project wide diagnostics
--]]

return {
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
    config = function()
      local set = vim.keymap.set
      set('n', '<leader>tt', '<cmd>TroubleToggle<CR>')
    end,
  },
}
