local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local BJCGroup = augroup("BJC", {})
local yank_group = augroup("HighlightYank", {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd("TextYanKPost", { -- flash highlight on yank
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, { -- remove trailing whitespace on save
    group = BJCGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd("LspAttach", { -- attach keymaps to lsp
    group = BJCGroup,
    callback = function(ev)
        local opts = { buffer = ev.bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)                   -- go to definition
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)                  -- go to declaration
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)                         -- show hover tooltip
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)               -- show implementations
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)                   -- show references
        vim.keymap.set({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, opts)   -- show signatute help
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- code actions
        vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)        -- open diagnostics in float window
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)               -- rename symbol
        vim.keymap.set("n", "<leader>ff", function()                              -- format based on lsp
            vim.lsp.buf.format({ async = true })
        end, opts)
        vim.keymap.set("n", "<leader>fw", function() -- format then write
            vim.lsp.buf.format({ async = false })
            vim.cmd("write")
        end, opts)
    end,
})
