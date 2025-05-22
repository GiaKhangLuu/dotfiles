  -- Color scheme
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
          flavour = "frappe", -- mocha, macchiato, frappe, latte
          background = {
              light = "frappe",
              dark = "frappe",
          },
          transparent_background = false,
          term_colors = false,
          integrations = {
              nvimtree = {
                enabled = true,
                show_root = true,
              },
              telescope = {
                enabled = true,
              },
              treesitter = true,
          },
        })

    -- setup must be called before loading 
    vim.cmd.colorscheme "catppuccin"

    end
}
