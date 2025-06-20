return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local builtin = require("telescope.builtin")

		-- File search
		vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "search files" })
		vim.keymap.set("n", "<leader>r", builtin.oldfiles, { desc = "recent files" })
		vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[s]earch [b]uffers" })
		vim.keymap.set("n", "<leader>sc", builtin.colorscheme, { desc = "[s]earch [c]olorscheme" })

		-- Text search
		vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[s]earch [w]ord" })
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[s]earch [g]rep" })

		-- Help and docs
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[s]earch [h]elp" })
		vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[s]earch [k]eymaps" })
		vim.keymap.set("n", "<leader>sp", builtin.builtin, { desc = "[s]earch [p]ickers" })

		-- Diagnostics
		vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[s]earch [d]iagnostics" })

		-- Search Neovim config
		vim.keymap.set("n", "<space>sn", function()
			require("telescope.builtin").find_files({
				cwd = vim.fn.stdpath("config"),
			})
		end, { desc = "[s]earch [n]eovim config" })
	end,
}
