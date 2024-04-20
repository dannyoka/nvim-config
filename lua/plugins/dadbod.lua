return {
  { 'tpope/vim-dadbod' },
  {
    'kristijanhusak/vim-dadbod-ui',
    config = function()
      vim.keymap.set('n', '<leader>dbt', '<cmd>DBUIToggle<cr>', { noremap = true, silent = true })
    end
  }
}
