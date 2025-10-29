vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>]", ":lnext <Cr>")
vim.keymap.set("n", "<leader>[", ":lprev <Cr>")
vim.keymap.set("n", "]q", ":cnext <Cr>")
vim.keymap.set("n", "[q", ":cprev <Cr>")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<leader>yf", function()
	local path = vim.fn.expand("%:.")
	vim.fn.setreg("+", path)
	print("Copied " .. path .. " to clipboard")
end, { desc = "Copy relative file path to clipboard" })

vim.cmd([[au FileType * set fo-=c fo-=r fo-=o]])

vim.diagnostic.config({ virtual_text = true })
vim.g.have_nerd_font = true
vim.g.loaded_python3_provider = 0
vim.o.termguicolors = true
vim.opt.autoindent = false
vim.opt.autoread = true
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.fixendofline = false
vim.opt.guicursor = "a:block-Cursor"
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 3
vim.opt.showmode = false
vim.opt.signcolumn = "yes:1"
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.sw = 4
vim.opt.timeoutlen = 300
vim.opt.ts = 4
vim.opt.updatetime = 250
vim.opt.wrap = false

require("config.lazy")
require("after").setup.autocmds()
-- require("after").setup.colorscheme({ transparent = true })
