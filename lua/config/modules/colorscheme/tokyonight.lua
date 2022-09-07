local M = {}

function M.setup()
	require("tokyonight").setup({
		style = config.colorscheme.variant,
	})
end

return M
