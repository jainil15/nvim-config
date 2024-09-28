require("rose-pine").setup({
	transparent_background = true,
	enable = {
		terminal = false,
	},
})
require("gruvbox").setup({
	overrides = {
		SignColumn = { link = "Normal" },
		GruvboxGreenSign = { bg = "" },
		GruvboxOrangeSign = { bg = "" },
		GruvboxPurpleSign = { bg = "" },
		GruvboxYellowSign = { bg = "" },
		GruvboxRedSign = { bg = "" },
		GruvboxBlueSign = { bg = "" },
		GruvboxAquaSign = { bg = "" },
	},
})
function ColorMyPencils(color)
	color = color or "tokyonight-night" -- default color scheme
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "none" })
end

ColorMyPencils()
