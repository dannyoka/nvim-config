return {
  'numToStr/FTerm.nvim',
  config = function()
    require('FTerm').setup({
      dimensions = {
        height = 0.8,
        width = 0.8,
      },
      border = 'single',
    })
    vim.keymap.set('n', '<C-b>', '<CMD>lua require("FTerm").toggle()<CR>')
    vim.keymap.set('t', '<C-b>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
  end,
}
