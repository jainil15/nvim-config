require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "biome" },
		typescript = { "biome" },
		typescriptreact = { "biome" },
		javascriptreact = { "prettier" },
		go = { "gofmt", "goimports" },
		rust = { "rustfmt" },
	},
})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
