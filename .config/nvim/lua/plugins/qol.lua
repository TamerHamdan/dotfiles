-- small quality of life plugins
return {

   -- toggleterm
   {
      "akinsho/toggleterm.nvim",
      version = "*",
      config = function()
         require("toggleterm").setup()
         
         -- LazyGit terminal
         local Terminal = require('toggleterm.terminal').Terminal
         local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })
         
         function _lazygit_toggle()
            lazygit:toggle()
         end
         
         vim.keymap.set("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { desc = "LazyGit" })
      end,
   },
   -- which key
   {
      "folke/which-key.nvim",
      event = "VeryLazy",
      opts = {
      },
   }
}
