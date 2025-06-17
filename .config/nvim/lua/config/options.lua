-- General Settings
vim.o.clipboard = "unnamedplus"
vim.o.smartindent = true
vim.o.wrap = false
vim.opt.confirm = true 
vim.opt.fileencoding = "utf-8"

-- UI Settings
vim.o.termguicolors = true
vim.g.have_nerd_font = true
vim.opt.fillchars = { eob = " " }
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = false
vim.o.showmode = false
vim.opt.scrolloff = 10
vim.o.updatetime = 250
vim.opt.showtabline = 0
vim.opt.expandtab = true
vim.opt.splitbelow = true 
vim.opt.splitright = true 
vim.opt.showcmd = false
vim.opt.ruler = true
vim.opt.conceallevel = 0  
vim.opt.shiftwidth = 2 

-- Search Settings
vim.o.smartcase = true
vim.o.ignorecase = true
vim.opt.incsearch = true 
vim.opt.hlsearch = true

-- File and Backup Settings
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.opt.undofile = true