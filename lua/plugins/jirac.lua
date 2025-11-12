return {
  "janBorowy/jirac.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "grapp-dev/nui-components.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("jirac").setup({
      email = vim.env.JIRA_USERNAME,
      api_key = vim.env.JIRA_API_TOKEN,
      jira_domain = "qlik-dev.atlassian.net",
      config = {
        default_project_key = "QANS",
        keymaps = {
          ["keymap_name"] = {
            mode = "n",
            key = "q",
          },
        },
        window_width = 150,
        window_height = 50,
      },
    })
  end,
}
