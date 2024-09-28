require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "biome" },
		typescript = { "biome" },
		typescriptreact = { "biome" },
		javascriptreact = { "prettier" },
		go = { "gofumpt", "golines", "goimports" },
		rust = { "rustfmt" },
		sql = { "sql-formatter" },
		cpp = { "clang-format" },
	},
})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
