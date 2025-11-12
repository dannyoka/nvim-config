return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      lightbulb = {
        enable = true,
        virtual_text = true,
        sign = false,
      },
    })
    vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
    vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- optional
    "nvim-tree/nvim-web-devicons",     -- optional
  },
}
