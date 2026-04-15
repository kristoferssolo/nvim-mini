vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.termguicolors = true
vim.opt.winborder = "rounded"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.signcolumn = "yes"
vim.opt.showmatch = true
vim.opt.cmdheight = 1
vim.opt.fillchars = { eob = " " }
vim.opt.list = true
vim.opt.listchars = { space = "⋅", tab = "▎ ", eol = "↴" }
vim.opt.swapfile = false
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = "cp -r"
vim.g.netrw_winsize = 30

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "*", "*zz")
vim.keymap.set("n", "#", "#zz")
vim.keymap.set("n", "g*", "g*zz")
vim.keymap.set("n", "g#", "g#zz")
vim.keymap.set("n", "-", "<cmd>Explore<cr>")

vim.keymap.set("n", "j", function()
	return vim.v.count == 0 and "j" or "gj"
end, { desc = "Navigate wrapped lines", expr = true, silent = true })
vim.keymap.set("n", "k", function()
	return vim.v.count == 0 and "k" or "gk"
end, { desc = "Navigate wrapped lines", expr = true, silent = true })

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l>")

if vim.fn.has("nvim-0.12.0") == 1 then
	vim.pack.add({
		"https://github.com/rose-pine/neovim",
	})

	require("rose-pine").setup({
		styles = {
			bold = true,
			italic = false,
			transparency = true,
		},
	})
	vim.cmd.colorscheme("rose-pine")
end
