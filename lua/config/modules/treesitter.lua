local M = {}

function M.setup()
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "c", "cpp", "rust", "lua", "bash" },
		highlight = {
			enable = true,
		},
		rainbow = {
			enable = true,
			extended_mode = true,
		},
	})
end

return M
