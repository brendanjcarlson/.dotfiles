return {
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'nightfox'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
