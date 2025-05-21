-- Telescope plugin
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
        },
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')
      
        telescope.setup({
        defaults = {
            path_display = { "smart" },
            file_ignore_patterns = { ".git/", "node_modules" },
        }
        })
        -- Load fzf native for better sorting performance
        telescope.load_extension('fzf')

        local keymap = vim.keymap
      
        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true, desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { noremap = true, silent = true, desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true, desc = "Find string in cwd" })
        keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { noremap = true, silent = true, desc = "Find string under cursor in cwd" })

    end
}
