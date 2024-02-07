return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",           -- lsp package manager
            "williamboman/mason-lspconfig.nvim", -- lsp package manager
            "hrsh7th/cmp-nvim-lsp",              -- completion
            "hrsh7th/cmp-buffer",                -- completion
            "hrsh7th/cmp-path",                  -- completion
            "hrsh7th/cmp-cmdline",               -- completion
            "hrsh7th/nvim-cmp",                  -- completion
            "L3MON4D3/LuaSnip",                  -- snippet engine
            "saadparwaiz1/cmp_luasnip",          -- snippet completion
        },

        config = function()
            local mason = require("mason")
            mason.setup()
            local mason_lspconfig = require("mason-lspconfig")
            mason_lspconfig.setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "tsserver",
                    "gopls",
                    "templ",
                    "cssls",
                    "dockerls",
                    "docker_compose_language_service",
                    "html",
                    "yamlls",
                    "bashls",
                    "tailwindcss",
                    "jsonls",
                },
                handlers = {
                    function(server_name) -- default handler
                        require("lspconfig")[server_name].setup({})
                    end,
                    ["lua_ls"] = function() -- lua handler so vim global is not a warning
                        local lspconfig = require("lspconfig")
                        lspconfig.lua_ls.setup({
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim" }
                                    }
                                }
                            }
                        })
                    end,
                },
            })

            local cmp = require("cmp")
            local cmp_select = { behavior = cmp.SelectBehavior.Insert }
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.close(),
                    ["<CR>"] = cmp.mapping.confirm(cmp_select),
                    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                    ["<Tab>"] = nil,
                    ["<S-Tab>"] = nil,
                }),
                sources = cmp.config.sources(
                    {
                        { name = 'nvim_lsp' },
                        { name = 'luasnip' },
                    },
                    {
                        { name = 'buffer' },
                    }
                ),
            })

            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })

            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' }
                }, {
                    { name = 'cmdline' }
                })
            })

            vim.diagnostic.config({
                virtual_text = true,
            })
        end,
    },
}
