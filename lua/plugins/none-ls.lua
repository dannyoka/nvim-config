return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.golines,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})


    vim.api.nvim_create_autocmd('BufWritePre', {
      desc = 'Format before save',
      pattern = '*',
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
