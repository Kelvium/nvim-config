local M = {}

function M.setup()
	-- indentation
	vim.o.smartindent = true
	vim.o.expandtab = false
	vim.o.tabstop = 2
	vim.o.shiftwidth = 2

	-- number column
	vim.o.number = true
	vim.o.relativenumber = true

	-- mapping
	vim.g.mapleader = ","

	-- autocompletion
	vim.opt.completeopt = { "menu", "menuone", "noselect" }

	-- encoding
	vim.o.encoding = "utf-8"
	vim.o.fileformat = "unix"

	-- netrw
	vim.g.netrw_banner = 0
	vim.g.netrw_liststyle = 3
	vim.g.netrw_browse_split = 3
end

return M
