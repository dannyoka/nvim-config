return {
	"dannyoka/lazyjira.nvim",
	dir = "~/.config/nvim/dev/lazyjira.nvim",
	-- optional for floating window border decoration
	config = function()
		vim.keymap.set("n", "<leader>lj", ":JiraTUI<CR>")
	end,
}
