return {
    { -- lsp/ast syntax highlighting stuff
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash",                                               -- scripts and things like env files
                    "css", "scss",                                        -- pretty colors
                    "c_sharp",                                            -- because i need a job
                    "gitignore",                                          -- idk why this is needed but here it is
                    "go", "gomod", "gosum", "gowork", "templ",            -- all go related stuff (templ is for a-h/templ)
                    "graphql",                                            -- graphql is annoying to write without syntax highlighting
                    "html",                                               -- yay html
                    "http",                                               -- idk what this is but a lot of other people include it
                    "javascript", "jsdoc", "typescript", "tsx", "svelte", -- all js/ts related stuff
                    "lua", "luadoc",                                      -- lua is the greatest language on earth
                    "markdown", "markdown_inline",                        -- extended markdown support
                    "php",                                                -- php is the goat ssr language
                    "python",                                             -- i hate python but it is everywhere
                    "rust",                                               -- i really want to understand rust lmao
                    "sql",                                                -- 99.999% of ORM's are trash just raw dog the sql
                    "json", "toml", "yaml", "make", "dockerfile",         -- all the config files i commonly use
                    "vimdoc",                                             -- HELP ME
                },
                sync_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            })

            vim.filetype.add({
                extension = {
                    templ = "templ",
                },
            })
        end,
    },
}
