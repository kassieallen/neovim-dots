-- vim configurtations
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.autoindent = true
vim.o.number = true
-- vim.o.rnu = true
vim.o.termguicolors = true
vim.o.expandtab = true

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("highlight Normal ctermbg=NONE")
vim.cmd("highlight nonText ctermbg=NONE")
vim.cmd("filetype plugin indent on")

vim.opt.wrap = false
vim.g.mapleader = " "

-- QOL keybinds
vim.keymap.set('n', '<leader>sv', '<C-w>v', {}) -- split window vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s', {}) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', {}) -- make split windows equal size
vim.keymap.set('n', '<leader>sx', '<cmd>close<CR>', {}) -- close current split window
vim.keymap.set({'n', 'v', 'i'}, '<C-s>', '<cmd>w<CR>', {}) -- Ctrl + S saves

-- open neo-tree on startup
vim.api.nvim_create_autocmd({"VimEnter"}, {
    pattern = "*",
    command = "Neotree filesystem reveal left",
})
