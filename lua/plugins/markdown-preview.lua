return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	config = function()
		-- require('markdown-preview').setup({})
		vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>")
	end,
}
