return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	vim.keymap.set("n", "<leader>t", ":TestNearest<CR>"),
	vim.keymap.set("n", "<leader>T", ":TestFile<CR>"),
	vim.keymap.set("n", "<leader>ts", ":TestSuite<CR>"),
	vim.keymap.set("n", "<leader>l", ":TestLast<CR>"),
	vim.cmd('let test#strategy = "vimux"'),
}
