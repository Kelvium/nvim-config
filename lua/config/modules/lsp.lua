local M = {}

local servers = { "clangd", "rust_analyzer" }

function M.setup()
	local lspconfig = require("lspconfig")
	local lsp_status = require("lsp-status")
	lsp_status.register_progress()

	local options = { noremap = true, silent = true }
	vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, options)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, options)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_next, options)
	vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, options)

	for _, server_name in ipairs(servers) do
		lspconfig[server_name].setup({
			capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
			on_attach = function(client, bufnr)
				local buffer_options = { noremap = true, silent = true, buffer = bufnr }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, buffer_options)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, buffer_options)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, buffer_options)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, buffer_options)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, buffer_options)
				vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, buffer_options)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, buffer_options)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, buffer_options)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, buffer_options)
				vim.keymap.set("n", "<leader>f", vim.lsp.buf.formatting, buffer_options)

				lsp_status.on_attach(client)
				require("lsp_signature").on_attach({
					bind = true,
					handler_opts = {
						border = "rounded",
					},
				}, bufnr)
			end,
		})
	end
end

return M
