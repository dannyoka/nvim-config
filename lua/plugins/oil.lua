return {
	"stevearc/oil.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["<C-h>"] = false,
				["<C-p>"] = false,
				["<C-s>"] = false,
			},
			default_file_explorer = true,
		})
		vim.keymap.set("n", "-", "<CMD>Oil<CR>")
	end,
}
