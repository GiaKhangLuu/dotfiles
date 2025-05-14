return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup()

        vim.keymap.set('n', '<leader>h', ":Gitsigns preview_hunk<CR>", { noremap = true, silent = true, desc = "Preview hunk" })
        vim.keymap.set('n', '<leader>b', ":Gitsigns toggle_current_line_blame<CR>", { noremap = true, silent = true, desc = "Blame line" })
    end
}