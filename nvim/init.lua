-- Reminders:
-- Search and replace -> *cgn
-- *: start search for word under cursor
-- c: change
-- gn: next match

vim.opt.wildignore:append({ "*/tmp/*", "*.so", "*.swp", "*.zip" })
vim.opt.clipboard       = "unnamedplus"
vim.opt.background      = "dark"
vim.opt.encoding        = "utf-8"
vim.opt.mouse           = "a"
vim.opt.timeoutlen      = 1000
vim.opt.ttimeoutlen     = 0
vim.opt.tabstop         = 4
vim.opt.softtabstop     = 4
vim.opt.shiftwidth      = 4
vim.opt.modelines       = 0
vim.opt.showmode        = true
vim.opt.showcmd         = true
vim.opt.ttyfast         = true
vim.opt.hidden          = true
vim.opt.number          = true
vim.opt.hlsearch        = true
vim.opt.splitright      = true
vim.opt.splitbelow      = true
vim.opt.expandtab       = true
vim.opt.termguicolors   = true
vim.opt.ruler           = true
vim.opt.compatible      = false
vim.opt.swapfile        = false
vim.opt.shiftround      = false
vim.opt.wrap            = false

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme gruber-darker")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

vim.g.mapleader = ","

vim.g.NERDTreeQuitOnOpen = 1
vim.g.NERDTreeShowHidden = 1

vim.g.ctrlp_map                 = "<leader>f"
vim.g.ctrlp_cmd                 = "CtrlP"
vim.g.ctrlp_working_path_mode   = "ra"
vim.g.ctrlp_custom_ignore       = {
  dir = [[\v[\/]\.(git|hg|svn)$]],
  file = [[\v\.(exe|so|dll)$]]
}

require("nvim-treesitter.configs").setup({
    ensure_installed    = { "lua", "c", "python", "go", "odin", "elixir", "dart" },
    highlight           = { enable = true },
    indent              = { enable = true }
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>e", ":NERDTreeToggle<CR>", opts)       -- Toggle NERDTree file explorer
vim.keymap.set("n", "<leader>w", ":wa<CR>", opts)                   -- Write all buffers
vim.keymap.set("n", "<leader>wq", ":wqa<CR>", opts)                 -- Write and quit all buffers
vim.keymap.set("n", "<leader>lb", ":ls<CR>", opts)                  -- List all buffers
vim.keymap.set("n", "<leader>sb", ":b", opts)                       -- Select buffer
vim.keymap.set("n", "<leader>db", ":bd<CR>", opts)                  -- Delete buffer
vim.keymap.set("n", "<leader>hs", [[<cmd>let @/ = @"<CR>n]], opts)  -- Highlight last selected text
vim.keymap.set("n", "<leader>sh", ":noh<CR>", opts)                 -- Stop search highlighting
vim.keymap.set("n", "<leader>pr", ":vnew<CR>", opts)                -- New vertical split (pane on right)
vim.keymap.set("n", "<leader>pb", ":new<CR>", opts)                 -- New horizontal split (pane on bottom)
vim.keymap.set("n", "<leader>iw", ":vertical resize +5<CR>", opts)  -- Increase pane width
vim.keymap.set("n", "<leader>dw", ":vertical resize -5<CR>", opts)  -- Decrease pane width
vim.keymap.set("n", "<leader>ih", ":resize +5<CR>", opts)           -- Increase pane height
vim.keymap.set("n", "<leader>dh", ":resize -5<CR>", opts)           -- Decrease pane height
vim.keymap.set("n", "<leader>=", "<C-w>=", opts)                    -- Equalize all splits
vim.keymap.set("n", "<leader>hh", "<C-w>h", opts)                   -- Navigate to left pane
vim.keymap.set("n", "<leader>ll", "<C-w>l", opts)                   -- Navigate to right pane
vim.keymap.set("n", "<leader>kk", "<C-w>k", opts)                   -- Navigate to upper pane
vim.keymap.set("n", "<leader>jj", "<C-w>j", opts)                   -- Navigate to lower pane
