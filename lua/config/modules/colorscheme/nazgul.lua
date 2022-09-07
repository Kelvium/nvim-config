local M = {}

function M.setup()
	vim.o.termguicolors = true
	vim.cmd("colorscheme nazgul")
end

return M
