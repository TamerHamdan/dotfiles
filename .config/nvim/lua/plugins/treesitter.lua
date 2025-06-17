return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { 
					-- Core
					"lua", "vim", "vimdoc", "markdown", "markdown_inline",
					-- Languages
					"rust", "go", "c", "cpp", "java",
					-- Web
					"javascript", "typescript", "tsx", "html", "css", "json",
					-- Scripting
					"python", "bash",
					-- Config
					"yaml", "toml", "gitignore", "dockerfile"
				},

				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,

				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,

				highlight = {
					enable = true,
					disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,

					additional_vim_regex_highlighting = false, -- Ruby/PHP
				},
			})
		end,
	},
}