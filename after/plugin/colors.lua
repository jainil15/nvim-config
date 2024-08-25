require("rose-pine").setup({
  disable_background = false
})
function ColorMyPencils(color)
  color = color or "tokyonight-night" -- default color scheme
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = "none" })
end

ColorMyPencils()
