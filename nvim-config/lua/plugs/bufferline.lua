-- Bufferline plugin
return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
      options = {
        numbers = "none",  -- No numbers in the tab bar
        close_command = "bdelete! %d",  -- Command to close tabs
        right_mouse_command = "bdelete! %d",  -- Close on right-click
        offsets = {
          { filetype = "NvimTree", text = "File Explorer", text_align = "center" },
        },
        show_buffer_icons = true,  -- Display file type icons
        show_buffer_close_icons = true,
        separator_style = "slant",  -- VSCode-like slant separators
        indicator = {
          icon = '▎',  -- This can be any icon you prefer
          style = 'underline',  -- Use 'underline' style for the indicator
        },
      },
    })
  end
}
