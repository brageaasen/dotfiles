return {

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "basedpyright", "jdtls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- Lua language server
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					if client.server_capabilities.documentFormattingProvider then
						vim.api.nvim_buf_set_keymap(
							bufnr,
							"n",
							"<leader>gf",
							"<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
							{ noremap = true, silent = true }
						)
					end
				end,
			})

			-- TypeScript/JavaScript language server
			lspconfig.tsserver.setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					if client.server_capabilities.documentFormattingProvider then
						vim.api.nvim_buf_set_keymap(
							bufnr,
							"n",
							"<leader>gf",
							"<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
							{ noremap = true, silent = true }
						)
					end
				end,
			})

			-- Basedpyright (Python) language server
			lspconfig.basedpyright.setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					if client.server_capabilities.documentFormattingProvider then
						vim.api.nvim_buf_set_keymap(
							bufnr,
							"n",
							"<leader>gf",
							"<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
							{ noremap = true, silent = true }
						)
					end
				end,
			})

			-- Java language server (using jdtls)
			lspconfig.jdtls.setup({
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					if client.server_capabilities.documentFormattingProvider then
						vim.api.nvim_buf_set_keymap(
							bufnr,
							"n",
							"<leader>gf",
							"<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
							{ noremap = true, silent = true }
						)
					end
				end,
				flags = {
					debounce_text_changes = 150, -- Adjust debounce time if necessary
				},
			})

			-- Common keymaps for LSP
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
