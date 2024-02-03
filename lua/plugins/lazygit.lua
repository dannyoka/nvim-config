return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  requires = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>")
  end 
}
