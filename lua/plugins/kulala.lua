return {
	"mistweaverco/kulala.nvim",
	opts = {},
	config = function()
		require("rest-nvim").setup()
		vim.keymap.set("n", "rr", "<cmd>lua require('kulala').run()<CR>")
		vim.keymap.set("n", "renv", "<cmd>Telescope rest select_env<CR>")
		require("telescope").load_extension("rest")
	end,
}
