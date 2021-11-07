-- loads all setup for nvim

-- assure packer has been installed
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- keybindings for basic vim features
require('keybindings')
-- configuration for basic vim features
require('config')

-- vim plugins
require('plugins')

-- vim plugin config
require('plugin_config/colourscheme')
require('plugin_config/telescope')
require('plugin_config/vimspector')
require('plugin_config/nerdtree')
require('plugin_config/maximizer')
require('plugin_config/lualine')
require('plugin_config/diffview')
require('plugin_config/treesitter')

-- lsp
require('lspconfig')
require('plugin_config/lsp')
require('plugin_config/nvim-lint')
-- start completion
require('plugin_config/coq')
