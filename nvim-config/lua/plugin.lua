-- This file can be loaded by calling `lua require('plugins')` from your init.lua

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configure plugins
require("lazy").setup({ 
  { import = "plugs" }, 
  { import = "plugs.lsp" },
  { import = "plugs.git" }, 
  { import = "plugs.copilot" }
})
