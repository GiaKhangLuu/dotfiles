  -- Color scheme
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
          flavour = "latte", -- mocha, macchiato, frappe, latte
          background = {
              light = "latte",
              dark = "mocha",
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
    end
}
