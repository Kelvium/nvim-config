local M = {}

function M.setup()
	require("config.modules.colorscheme." .. config.colorscheme.name).setup()
end

return M
