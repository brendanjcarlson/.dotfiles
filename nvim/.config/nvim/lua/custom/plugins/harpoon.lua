return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    config = function()
      local harpoon = require 'harpoon'
      local set = vim.keymap.set
      harpoon:setup()
      set('n', '<leader>hh', function()
        harpoon:list():add()
      end)
      set('n', '<leader>hv', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      set('n', '<leader>ha', function()
        harpoon:list():select(1)
      end)
      set('n', '<leader>hs', function()
        harpoon:list():select(2)
      end)
      set('n', '<leader>hd', function()
        harpoon:list():select(3)
      end)
      set('n', '<leader>hf', function()
        harpoon:list():select(4)
      end)
      set('n', '<leader>hg', function()
        harpoon:list():select(5)
      end)
      set('n', '<leader>hp', function()
        harpoon:list():prev()
      end)
      set('n', '<leader>hn', function()
        harpoon:list():next()
      end)
    end,
  },
}
