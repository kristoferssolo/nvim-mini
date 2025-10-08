vim.g.mapleader = " "

vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.swapfile = false
vim.opt.cmdheight = 1
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.winborder = "rounded"
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("tab:▎ ")
vim.opt.listchars:append("eol:↴")

vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = "cp -r"
vim.g.netrw_winsize = 30

vim.keymap.set("n", "<leader>o", "<cmd>update<cr> <cmd>source<cr>")

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

vim.keymap.set("n", ";", ";", { silent = false })
vim.keymap.set({ "n" }, "j", "gj", { desc = "Allows to navigate though wrapped lines", noremap = true })
vim.keymap.set({ "n" }, "k", "gk", { desc = "Allows to navigate though wrapped lines", noremap = true })

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-l")

if vim.fn.has("nvim-0.12.0") == 1 then
	vim.pack.add({
		{ src = "https://github.com/rose-pine/neovimmm" },
	})
end

require("rose-pine").setup({
	styles = {
		bold = true,
		italic = false,
		transparency = true,
	},
})
vim.cmd.colorscheme("rose-pine")
