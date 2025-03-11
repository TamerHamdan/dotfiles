-- General Settings
vim.o.hlsearch = false -- Disable search highlighting
vim.wo.number = true -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.mouse = "a" -- Enable mouse support
vim.o.clipboard = "unnamedplus" -- Sync system clipboard with Neovim
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.ignorecase = true -- Case-insensitive search
vim.o.smartcase = true -- Case-sensitive if uppercase used
vim.wo.signcolumn = "yes" -- Always show sign column
vim.o.updatetime = 250 -- Faster UI updates
vim.o.timeoutlen = 300 -- Shorter timeout for key sequences
vim.o.termguicolors = true -- Enable 24-bit color support
vim.o.completeopt = "menuone,noselect" -- Better completion experience
vim.o.wrap = false -- Don't wrap lines
vim.o.scrolloff = 4 -- Keep 4 lines visible above/below cursor
vim.o.sidescrolloff = 8 -- Keep 8 columns visible on either side

-- Tabs and Indentation
vim.o.shiftwidth = 4 -- Indentation level
vim.o.tabstop = 4 -- Number of spaces per tab
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.smartindent = true -- Enable smart indenting

-- Splits and Windows
vim.o.splitbelow = true -- Horizontal splits go below
vim.o.splitright = true -- Vertical splits go to the right

-- File and Backup
vim.o.swapfile = false -- Disable swap files
vim.o.backup = false -- Disable backup files
vim.o.writebackup = false -- Disable write backup

-- UI Improvements
vim.o.showmode = true -- Hide mode text (e.g., -- INSERT --)
vim.o.cursorline = true -- Highlight the current line
vim.o.numberwidth = 4 -- Set line number column width
vim.o.pumheight = 10 -- Set popup menu height
vim.o.cmdheight = 1 -- Command line height
vim.o.fileencoding = "utf-8" -- Default file encoding

-- Additional Settings
vim.opt.shortmess:append("c") -- Suppress extra messages
vim.opt.iskeyword:append("-") -- Treat hyphenated words as one

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
