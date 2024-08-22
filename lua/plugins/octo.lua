return {
  "pwntester/octo.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    -- OR 'ibhagwan/fzf-lua',
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("octo").setup({
      enable_builtin = true,
    })
    vim.keymap.set("n", "<leader>o", "<cmd>Octo<cr>", { noremap = true, silent = true })
  end,
}
