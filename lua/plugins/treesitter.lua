return { {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = { "lua", "javascript", "typescript", "markdown", "markdown_inline" },
      highlight = { enable = true },
      indent = { enable = true },
      textobjects = {
        lsp_interop = {
          enable = true,
          border = 'rounded',
          peek_definition_code = {
            ['df'] = '@function.outer',
            ['dF'] = '@class.outer',
          },
        },
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
          },
        },
      }
    })
  end
},
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
  }
}
