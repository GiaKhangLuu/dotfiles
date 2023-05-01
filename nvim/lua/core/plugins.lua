local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	
	-- Theme
	use "EdenEast/nightfox.nvim"

	-- Tree
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

	-- Status line
  use 'nvim-lualine/lualine.nvim'

	-- Nvim - tmux windows navigation
	-- use ctrl-h/j/k/l to navigate between windows
	use 'christoomey/vim-tmux-navigator'

	-- LSP
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use 'neovim/nvim-lspconfig'

	-- Auto completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'onsails/lspkind-nvim'

	-- Snippet
	use "L3MON4D3/LuaSnip"

	-- Syntax highlight
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- Auto pairs
	use 'windwp/nvim-autopairs'

	-- Fuzzy finder
	use 'nvim-telescope/telescope-file-browser.nvim'
	use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'

	-- Tab
	use 'akinsho/bufferline.nvim'

	-- Colorizer
	use 'norcalli/nvim-colorizer.lua'

	-- LSP UI
	use 'glepnir/lspsaga.nvim'
	
	-- Indentation
	use 'lukas-reineke/indent-blankline.nvim'
	
	-- Prettier
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'MunifTanjim/prettier.nvim'
	
	-- Git 
	use 'lewis6991/gitsigns.nvim'
	use 'dinhhuy258/git.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

