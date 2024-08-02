local autocmd = vim.api.nvim_create_autocmd
local autogroup = vim.api.nvim_create_augroup

autocmd('TextYankPost', {
    group = autogroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

autocmd('BufWritePre', {
    pattern = "*",
    callback = function(args)
        require('conform').format({ bufnr = args.buf })
    end,
})
