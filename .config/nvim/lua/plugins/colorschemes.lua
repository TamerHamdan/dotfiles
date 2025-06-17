return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        -- styles = {
        --     transparency = true,
        -- },
      })
      vim.cmd("colorscheme rose-pine")
    end
  },
  -- Tokyo Night Theme
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    config = function()
      require("tokyonight").setup({
        style = "night",         -- or "storm", "moon", "day"
      })
      -- Uncomment the line below to use Tokyo Night instead of Rose Pine
      -- vim.cmd("colorscheme tokyonight")
    end
  },
}
