local M = {}

function M.setup()
	require("lualine").setup({
		options = {
			theme = config.colorscheme.name,
			component_separators = "",
			section_separators = "",
			globalstatus = true,
		},
		sections = {
			lualine_c = {
				{ "mode", color = { fg = "pink" } },
				{ "filename", color = { fg = "white" } },
				{ "location", color = { fg = "white" } },
			},
			lualine_x = {
				{
					function()
						return require("lsp-status").status()
					end,
				},
				{ "progress", color = { fg = "white" } },
				{ "filetype", color = { fg = "white" } },
				{ "branch", color = { fg = "pink" } },
			},
			lualine_a = {},
			lualine_b = {},
			lualine_y = {},
			lualine_z = {},
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
	})
end

return M
