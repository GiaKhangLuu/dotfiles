return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' 
	
	-- Theme
  --use 'ellisonleao/gruvbox.nvim'
	use "EdenEast/nightfox.nvim" 

	-- Tree
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

	-- Line
  use 'nvim-lualine/lualine.nvim'

	-- nvim - tmux windows navigation
	-- use ctrl-h/j/k/l to navigate between windows
	use 'christoomey/vim-tmux-navigator'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
