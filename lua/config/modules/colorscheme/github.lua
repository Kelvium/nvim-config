local M = {}

function M.setup()
	require("github-theme").setup({
		theme_style = config.colorscheme.variant,
	})
end

return M
