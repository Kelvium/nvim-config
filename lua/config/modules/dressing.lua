local M = {}

function M.setup()
	require("dressing").setup({
		enabled = true,
		border = config.border_style,
	})
end

return M
