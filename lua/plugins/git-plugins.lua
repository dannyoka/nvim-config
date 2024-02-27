return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      local current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol",
        delay = 200,
      }
      require("gitsigns").setup({
        current_line_blame = true,
        current_line_blame_opts = current_line_blame_opts,
      })
      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
      vim.keymap.set("n", "<leader>gc", ":G<CR>", {})
    end,
  },
}
