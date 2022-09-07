local M = {}

function M.setup()
	local neogit = require("neogit")
	neogit.setup({})

	vim.keymap.set("n", "<leader>ng", neogit.open, { noremap = true, silent = true })
end

return M
