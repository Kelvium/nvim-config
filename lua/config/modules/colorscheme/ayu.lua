local M = {}

function M.setup()
	vim.o.termguicolors = true
	require("ayu").setup({})
	vim.cmd("colorscheme ayu-" .. config.colorscheme.variant)
end

return M
