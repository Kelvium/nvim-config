local M = {}

function M.setup()
	vim.o.background = config.colorscheme.variant
	vim.cmd("colorscheme gruvbox")
end

return M
