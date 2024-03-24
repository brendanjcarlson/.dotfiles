return {
    { -- because i make a lot of mistakes
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", {})
        end,
    },
}
