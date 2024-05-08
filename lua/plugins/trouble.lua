return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		vim.keymap.set(
			"n",
			"<leader>ttw",
			"<cmd>TroubleToggle workspace_diagnostics<CR>",
			{ noremap = true, silent = true }
		)
		vim.keymap.set(
			"n",
			"<leader>ttd",
			"<cmd>TroubleToggle document_diagnostics<CR>",
			{ noremap = true, silent = true }
		)
	end,
}
