--[[
-- project wide diagnostics
--]]

return {
    {
        'folke/trouble.nvim',
        cmd = "Trouble",
        config = function()
            vim.keymap.set('n', '<leader>tt', "<cmd>Trouble diagnostics toggle<CR>")
        end,
    },
}
