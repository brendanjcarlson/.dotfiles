return {
    { -- fuzzy file finder
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            local builtin = require("telescope.builtin")

            local find_files = function()
                builtin.find_files({
                    find_command = { "rg", "--files", "--hidden", "--follow", "--glob", "!.git" },
                })
            end

            vim.keymap.set("n", "<leader>pf", find_files, {})
            vim.keymap.set("n", "<leader>pgf", builtin.git_files, {})
            vim.keymap.set("n", "<leader>ps", function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)
            vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
        end,
    },
}
