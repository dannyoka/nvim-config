return {
  'stevearc/oil.nvim',
  view_options = {
    show_hidden = true
  },
  config = function()
    require("oil").setup()
    vim.keymap.set("n", "-", "<CMD>Oil<CR>")
  end
}
