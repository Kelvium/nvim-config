local M = {}

function M.load_module(module_name)
	require("config.modules." .. module_name).setup()
end

function M.setup()
	local modules = {
		"vim",
		"colorscheme",
		"treesitter",
		"lsp",
		"cmp",
		"snippets",
		"pqf",
		"lualine",
		"surround",
		"sneak",
		"telescope",
		"dressing",
		"neogit",
		"gitconflict",
	}
	for _, module_name in ipairs(modules) do
		M.load_module(module_name)
	end
end

return M
