vim.opt.termguicolors = true

vim.opt.laststatus = 2
vim.opt.tabstop = 2  -- 1 tab = 2 space
vim.opt.shiftwidth = 2 -- indent = 2 space
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.cursorline = true
vim.opt.number = true  -- show number line

-- Remove search hightlight
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Increment/Decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wa', ':wa<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true })

