return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			styles = {
				transparency = true,
			},
		})
		vim.cmd("colorscheme rose-pine")
		vim.api.nvim_set_hl(0, "Comment", { fg = "#deffda" })
	end,
}
