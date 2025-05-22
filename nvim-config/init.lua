-- Basic Neovim configuration

-- disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Editor options
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = false  -- Disable relative line numbers
vim.opt.mouse = 'a'            -- Enable mouse support
vim.opt.showmode = false       -- Don't show mode in command line
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.breakindent = true     -- Maintain indent when wrapping
vim.opt.undofile = true        -- Persistent undo
vim.opt.ignorecase = true      -- Ignore case in search
vim.opt.smartcase = true       -- Override ignorecase when search includes uppercase
vim.opt.signcolumn = "yes"     -- Always show sign column
vim.opt.updatetime = 250       -- Decrease update time
vim.opt.timeoutlen = 300       -- Decrease timeout length
vim.opt.splitright = true      -- Split windows right
vim.opt.splitbelow = true      -- Split windows below
vim.opt.termguicolors = true   -- True color support
vim.opt.hidden = false         -- Don't keep buffers in background
vim.opt.title = true           -- Show filename in window title
vim.opt.titlestring = '%f'     -- Show full file path in title
vim.opt.cursorline = true      -- Highlight current line

-- Custom commands
vim.api.nvim_create_user_command('Byebye', function()
    -- Close all buffers and exit Neovim
    vim.cmd('qa!')
end, {})

-- Auto-close Neovim if nvim-tree is the last window
--vim.api.nvim_create_autocmd("BufEnter", {
--  nested = true,
--  callback = function()
--    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
--      vim.cmd "quit"
--    end
--  end
--})

-- Tab settings
vim.opt.expandtab = true       -- Use spaces instead of tabs
vim.opt.shiftwidth = 4         -- Shift 4 spaces when tab
vim.opt.tabstop = 2            -- 1 tab == 2 spaces
vim.opt.smartindent = true     -- Autoindent new lines

-- Load plugins
require('plugin')

-- Window split keymaps
vim.keymap.set('n', '\\r', ':vsplit<CR>', { noremap = true, silent = true, desc = "Split right" })
vim.keymap.set('n', '\\d', ':split<CR>', { noremap = true, silent = true, desc = "Split down" })

-- Plugin keymaps
vim.keymap.set('n', '\\t', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = "Toggle NvimTree" })
vim.keymap.set('n', '\\e', ':NvimTreeFocus<CR>', { noremap = true, silent = true, desc = "Focus NvimTree" })

-- Plugin manager keymaps
vim.keymap.set('n', '\\ps', ':Lazy sync<CR>', { noremap = true, silent = true, desc = "Lazy sync" })
vim.keymap.set('n', '\\pl', ':Lazy<CR>', { noremap = true, silent = true, desc = "Lazy menu" })

-- Buffer navigation keymaps using BufferLineGoToBuffer
for i = 1, 9 do
  vim.keymap.set('n', '<A-' .. i .. '>', ':BufferLineGoToBuffer ' .. i .. '<CR>', { noremap = true, silent = true, desc = "Go to buffer " .. i })
end

-- Remap Shift-V to Ctrl-V for visual block mode
vim.api.nvim_set_keymap('v', '<S-V>', '<C-V>', { noremap = true })

