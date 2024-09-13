return {
  "dhruvmanila/browser-bookmarks.nvim",
  version = "*",
  -- Only required to override the default options
  opts = {
    -- Override default configuration values
    -- selected_browser = 'chrome'
  },
  dependencies = {
    -- Only if your selected browser is Firefox, Waterfox or buku
    -- 'kkharji/sqlite.lua',

    -- Only if you're using the Telescope extension
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("browser_bookmarks").setup({
      default_browser = "chrome",
    })
    require("telescope").load_extension("bookmarks")
    require("telescope").load_extension("ui-select")
    vim.keymap.set("n", "<leader>bb", "<Cmd>BrowserBookmarks<CR>")
  end,
}
