local M = {}

function M.setup()
	local telescope = require("telescope")

	telescope.setup({
		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = "smart_case",
			},
			file_browser = {
				hijack_netrw = true,
			},
		},
	})

	telescope.load_extension("fzf")
	telescope.load_extension("file_browser")

	local map = vim.api.nvim_set_keymap
	local map_options = { noremap = true, silent = true }
	map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", map_options)
	map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", map_options)
	map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", map_options)
	map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", map_options)
end

return M
