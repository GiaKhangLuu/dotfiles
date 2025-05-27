return {
    "kevinhwang91/nvim-ufo",
    event = "BufReadPost",
    dependencies = { 
        "kevinhwang91/promise-async",
        "nvim-treesitter/nvim-treesitter"
    },
    init = function()
        -- Fold options
        vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep:|,foldclose:]]
        vim.o.foldcolumn = "auto:9" -- '0' is not bad
        vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
        vim.o.foldlevelstart = 99
        vim.o.foldenable = true
        require("ufo").setup()
    end,
    opts = {
        provider_selector = function() 
            return {'treesitter', 'indent'}
        end,
    }
}
