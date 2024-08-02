return {
  {
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        lua = { 'stylua' },
        go = { 'gofumpt', 'goimports', 'goimports-reviser', 'golines' },
        templ = { 'templ', 'goimports', 'goimports-reviser' },
        javascript = { { 'biome', 'prettierd', 'prettier' } },
        javascriptreact = { { 'biome', 'prettierd', 'prettier' } },
        typescript = { { 'biome', 'prettierd', 'prettier' } },
        typescriptreact = { { 'biome', 'prettierd', 'prettier' } },
        css = { { 'prettierd', 'prettier' }, 'stylelint' },
        scss = { { 'prettierd', 'prettier' }, 'stylelint' },
        html = { { 'prettierd', 'prettier' } },
        json = { { 'biome', 'prettierd', 'prettier' } },
        sh = { 'shfmt' },
        sql = { 'sql_formatter' },
        rust = { 'rustfmt' },
      },
    },
  },
}
