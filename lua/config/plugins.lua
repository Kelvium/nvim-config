local M = {}

function M.setup()
	local packer = require("packer")
	packer.init({
		git = {
			subcommands = {
				install = "clone --depth %i --progress",
			},
		},
	})
	packer.startup(function(use)
		use("wbthomason/packer.nvim")

		-- colorschemes
		use("Shatur/neovim-ayu")
		use("folke/tokyonight.nvim")
		use("ellisonleao/gruvbox.nvim")
		use("projekt0n/github-nvim-theme")
		use("wbthomason/vim-nazgul")

		-- lsp
		use("neovim/nvim-lspconfig")
		use("nvim-lua/lsp-status.nvim")

		-- snippets
		use("L3MON4D3/LuaSnip")
		use("rafamadriz/friendly-snippets")

		-- autocompletion
		use("hrsh7th/nvim-cmp")
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-cmdline")
		use("hrsh7th/cmp-git")
		use("saadparwaiz1/cmp_luasnip")

		-- cool features
		use("kylechui/nvim-surround")
		use("justinmk/vim-sneak")

		use({
			"nvim-telescope/telescope.nvim",
			requires = {
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					run = "make",
				},
			},
		})

		-- git
		use("TimUntersberger/neogit")
		use("akinsho/git-conflict.nvim")

		-- visual
		use("p00f/nvim-ts-rainbow")
		use("ray-x/lsp_signature.nvim")
		use("simrat39/inlay-hints.nvim")
		use("kyazdani42/nvim-web-devicons")
		use("stevearc/dressing.nvim")
		use("https://gitlab.com/yorickpeterse/nvim-pqf.git")

		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})

		use("nvim-lualine/lualine.nvim")

		-- code style
		use("gpanders/editorconfig.nvim")

		-- misc
		use("nvim-lua/plenary.nvim")
		use("andweeb/presence.nvim")
	end)
end

return M
