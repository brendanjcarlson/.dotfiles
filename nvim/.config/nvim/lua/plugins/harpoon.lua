return {
    { -- easy file switching
        "theprimeagen/harpoon",
        branch = "harpoon2",
        config = function()
            local harpoon = require("harpoon")
            harpoon:setup()
            vim.keymap.set("n", "<leader>hh", function() harpoon:list():append() end)
            vim.keymap.set("n", "<leader>hv", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
            vim.keymap.set("n", "<leader>ha", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<leader>hs", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<leader>hd", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<leader>hf", function() harpoon:list():select(4) end)
            vim.keymap.set("n", "<leader>hg", function() harpoon:list():select(5) end)
            vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
            vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)
        end,
    },
}
