require("ibl").setup({
  indent = {
    char = "▏", -- This is a slightly thinner char than the default one, check :help ibl.config.indent.char
  },
  scope = {
    show_start = false,
    show_end = false,
  },
})
-- disable indentation on the first level
local hooks = require("ibl.hooks")
