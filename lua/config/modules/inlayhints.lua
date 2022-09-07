local M = {}

function M.setup()
	require("inlay-hints").setup({
		eol = {
			right_align = true,
		},
	})
end

return M
