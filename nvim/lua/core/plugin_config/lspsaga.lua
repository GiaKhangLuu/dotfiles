local status, lspsaga = pcall(require, 'lspsaga')
if (not status) then return end

lspsaga.setup({
	finder = {
    keys = {
      jump_to = 's',
      expand_or_jump = 'g',
			vsplit = '-',
			split ='|',
    },
  },
	ui = {
    winblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  },
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'go', '<Cmd>Lspsaga outline<CR>', opts)

