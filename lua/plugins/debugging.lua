return {
  "mfussenegger/nvim-dap",
  event = "VeryLazy",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "jay-babu/mason-nvim-dap.nvim",
    "theHamsta/nvim-dap-virtual-text",
    "leoluz/nvim-dap-go",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    require("dapui").setup()
    require("dap-go").setup()
    require("dap-python").setup()
    require("nvim-dap-virtual-text").setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    vim.keymap.set("n", "B", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<leader>dc", dap.continue, {})
    vim.keymap.set("n", "<leader>ds", dap.close, {})
    vim.keymap.set("n", "<leader>dr", dap.restart, {})
    vim.keymap.set("n", "<leader>dx", dapui.close, {})
    vim.keymap.set("n", "<Right>", dap.step_over, {})
    vim.keymap.set("n", "<Down>", dap.step_into, {})
    vim.keymap.set("n", "<Up>", dap.step_out, {})
    dap.configurations.go = {
      {
        type = "go",
        name = "Debug main.go",
        request = "launch",
        program = "${workspaceFolder}/main.go",
        console = "integratedTerminal",
      },
      {
        type = "go",
        name = "Debug 2 main.go",
        request = "launch",
        program = "${workspaceFolder}/main.go",
        console = "integratedTerminal",
      },
      {
        type = "go",
        name = "Debug 3 main.go",
        request = "launch",
        program = "${workspaceFolder}/cmd/main.go",
        console = "integratedTerminal",
      },
    }
    dap.configurations.python = {
      type = "python",
      request = "launch",
      name = "debug python",
      program = "${workspaceFolder}main.py",
      console = "integratedTerminal",
    }
    vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DiagnosticError", linehl = "", numhl = "" })
    vim.fn.sign_define("DapStopped", { text = "▶", texthl = "DiagnosticWarn", linehl = "Visual", numhl = "" })
    vim.fn.sign_define("DapBreakpointCondition", { text = "◆", texthl = "DiagnosticWarn" })
    vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DiagnosticInfo" })
    vim.fn.sign_define("DapLogPoint", { text = "✎", texthl = "DiagnosticHint" })
    local project_dap = vim.fn.getcwd() .. "/.nvim/dap.lua"
    if vim.fn.filereadable(project_dap) == 1 then
      print("found local dap file")
      dofile(project_dap)
    end
  end,
}
