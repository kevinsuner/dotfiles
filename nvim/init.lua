vim.opt.wildignore:append({ '*/tmp/*', '*.so', '*.swp', '*.zip' })
vim.o.background = "dark"
vim.o.encoding = "utf-8"
vim.o.signcolumn = "yes"
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.swapfile = false
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>')

vim.pack.add({
	{ src = "https://github.com/ellisonleao/gruvbox.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require "gruvbox".setup({ terminal_colors = true, contrast = "hard" })
require "mini.pick".setup({})
require "oil".setup({
	view_options = { show_hidden = true },
})
require "nvim-treesitter.configs".setup({
	ensure_installed = { 'lua', 'c', 'odin', 'go', 'sql', 'html', 'css' },
	highlight = { enable = true },
	indent = { enable = true },
})

vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
vim.keymap.set('n', '<leader>h', ":Pick help<CR>")
vim.keymap.set('n', '<leader>e', ":Oil<CR>")

vim.lsp.enable({ 'clangd', 'gopls' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.cmd("colorscheme gruvbox")
vim.cmd(":hi statusline guibg=NONE")
