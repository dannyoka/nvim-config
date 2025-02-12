return {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		{ "kkharji/sqlite.lua", module = "sqlite" },
		-- you'll need at least one of these
		{ "nvim-telescope/telescope.nvim" },
		-- {'ibhagwan/fzf-lua'},
	},
	config = function()
		require("neoclip").setup({
			default_register = "*",
			on_paste = {
				close_telescope = false,
			},
			continuous_sync = true,
		})
		vim.keymap.set("n", "<leader>pp", "<cmd>Telescope neoclip<CR>")
	end,
}
