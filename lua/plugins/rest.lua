return {
	{
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
		opts = {
			rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
		},
	},
	{
		"rest-nvim/rest.nvim",
		ft = "http",
		dependencies = { "luarocks.nvim" },
		config = function()
			require("rest-nvim").setup()
			vim.keymap.set("n", "rr", "<cmd>Rest run<CR>")
			vim.keymap.set("n", "renv", "<cmd>Telescope rest select_env<CR>")
			require("telescope").load_extension("rest")
		end,
	},
}
