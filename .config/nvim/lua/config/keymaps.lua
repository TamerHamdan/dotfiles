-- Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- File Operations
vim.keymap.set("n", "<leader>qw", ":wq<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "Force quit" })
vim.keymap.set("n", "<leader>qa", ":qa!<CR>", { desc = "Force quit all" })

-- Plugin Shortcuts
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "\\", "<cmd>Oil --float<cr>", { desc = "Open Oil file explorer" })
vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm direction=float<cr>", { desc = "Open floating terminal" })
vim.keymap.set("n", "<leader>g", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- greatest remaps 
vim.keymap.set("x", "<leader>p", [["_dP]]) -- paste over selection without losing it
vim.keymap.set({ "n", "v" }, "d", "\"_d")  -- delete without yanking
vim.keymap.set({ "n", "v" }, "x", "\"_x")  -- delete without yanking