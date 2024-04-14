return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "leoluz/nvim-dap-go",
    "nvim-neotest/nvim-nio",
    "mxsdev/nvim-dap-vscode-js",
    {
      "microsoft/vscode-js-debug",
      opt = true,
      run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
    },
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")
    require("dapui").setup()
    require("dap-go").setup()
    require("dap-vscode-js").setup({
      adapters = { 'pwa-node', 'pwa-chrome', 'node' },
    })
    require('dap.ext.vscode').load_launchjs(nil, { node = { 'javascript', 'typescript' } })
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
    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<leader>dt", dapui.toggle, {})
    vim.keymap.set("n", "<leader>dc", dap.continue, {})
    vim.keymap.set("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", {})
  end

}
