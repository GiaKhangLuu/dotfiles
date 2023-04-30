local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local fb_actions = require "telescope".extensions.file_browser.actions

local function telescope_buffer_dir()
	return vim.fn.expand('%:p:h')
end

telescope.setup {
	defaults = {
		mappings = {
			n = {
				['q'] = actions.close
			}
		}
	},
	extensions = {
  	file_browser = {
    	theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
			mappings = {
				['n'] = {
					['~'] = fb_actions.goto_home_dir,
					['a'] = fb_actions.create
				}
			}
    }
  }
}

vim.keymap.set('n', '<leader>fo',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true,
			initial_mode= 'normal'
    })
  end)
vim.keymap.set('n', '<leader>fg', function()
  builtin.live_grep()
end)
vim.keymap.set('n', '<leader>fb', function()
  builtin.buffers()
end)
vim.keymap.set('n', '<leader>fh', function()
  builtin.help_tags()
end)
vim.keymap.set('n', '<leader>fr', function()
  builtin.resume()
end)

-- Show directory
vim.keymap.set("n", "<leader>ff", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = true,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
