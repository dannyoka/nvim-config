return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		auto_install = true,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"gopls",
					"intelephense",
					"graphql",
					-- "emmet_ls",
					"emmet_language_server",
					"ruff",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local plugins = {
				"lua_ls",
				"ts_ls",
				"gopls",
				"graphql",
				-- "emmet_ls",
				"emmet_language_server",
				"ruff",
				"copilot",
			}
			for _, lsp in ipairs(plugins) do
				vim.lsp.config(lsp, {
					capabilities = capabilities,
				})
			end

			-- local lspconfig = require("lspconfig")
			-- lspconfig.lua_ls.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.graphql.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.ts_ls.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.gopls.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.ruff.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.intelephense.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.graphql.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.emmet_language_server.setup({
			-- 	capabilities = capabilities,
			-- })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>err", vim.diagnostic.open_float, {})
		end,
	},
}
