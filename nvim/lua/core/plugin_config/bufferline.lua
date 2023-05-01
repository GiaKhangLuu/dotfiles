local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup({
	options = {
		mode = 'tabs',
		always_show_bufferline = true,
		show_buffer_close_icons = true,
		show_close_icon = true,
		color_icons = true,
		show_tab_indicators = true,
		diagnostics = 'nvim_lsp',
    separator_style = "slant",
		offsets = {
			{
  			filetype = 'NvimTree',
  			text = function()
					return vim.fn.getcwd()
				end,
  			highlight = 'Directory',
				text_align = 'left'
			}
		}
	}
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

