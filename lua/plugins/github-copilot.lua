return {
  {
    "github/copilot.vim",
  },
  {
    {
      "CopilotC-Nvim/CopilotChat.nvim",
      dir = "~/.config/nvim/dev/CopilotChat.nvim",
      dependencies = {
        { "nvim-lua/plenary.nvim", branch = "master" },
      },
      build = "make tiktoken",
      opts = {},
      config = function()
        local function get_project_name()
          local cwd = vim.fn.getcwd()
          return cwd:match("([^/]+)$")
        end
        local function file_exists(path)
          local f = io.open(path, "r")
          if f then
            f:close()
            return true
          end
          return false
        end
        local chat = require("CopilotChat")
        local copilot_chat_path = "/Users/iep/.local/share/nvim/copilotchat_history/"
        vim.keymap.set("n", "<leader>vcc", function()
          chat.open()
          local project_name = get_project_name()
          if file_exists(copilot_chat_path .. project_name .. ".json") then
            print("loading", project_name)
            chat.load(project_name)
          else
            print("no chat exists, starting a new one")
            --   chat.save(project_name)
          end
        end)
        vim.keymap.set("v", "<leader>vce", function()
          chat.open()
          vim.cmd("CopilotChatExplain")
        end)
        vim.keymap.set("v", "<leader>vcr", function()
          chat.open()
          vim.cmd("CopilotChatRefactor")
        end)
        vim.keymap.set("v", "<leader>vcf", function()
          chat.open()
          vim.cmd("CopilotChatFix")
        end)
        vim.keymap.set("v", "<leader>vco", function()
          chat.open()
          vim.cmd("CopilotChatOptimize")
        end)
        vim.keymap.set("v", "<leader>vcd", function()
          chat.open()
          vim.cmd("CopilotChatDocs")
        end)
        vim.keymap.set("v", "<leader>vct", function()
          chat.open()
          vim.cmd("CopilotChatTests")
        end)
        vim.keymap.set(
          "i",
          "<C-j>",
          'copilot#Accept("<CR>")',
          { expr = true, silent = true, replace_keycodes = false }
        )
        vim.keymap.set("n", "<C-l>", function()
          chat.save(get_project_name())
          print("saving")
          vim.cmd("TmuxNavigateRight")
        end)
      end,
      window = {
        layout = "float",
        width = 80,     -- Fixed width in columns
        height = 20,    -- Fixed height in rows
        border = "rounded", -- 'single', 'double', 'rounded', 'solid'
        title = "🤖 AI Assistant",
        zindex = 100,   -- Ensure window stays on top
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}
