return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})

			local lspconfig = require("lspconfig")

			require("mason-lspconfig").setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({})
				end,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			require("lspconfig").lua_ls.setup({})

			vim.keymap.set("n", "<space>l", function()
				vim.lsp.buf.format()
			end)
		end,
	},
}
