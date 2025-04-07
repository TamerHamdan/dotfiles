return {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    config = function()
        require("tokyonight").setup({
            style = "night", -- or "storm", "moon", "day"
            transparent = true,
        })
        vim.cmd("colorscheme tokyonight")
    end,
}
