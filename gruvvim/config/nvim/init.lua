-- loads all setup for nvim

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

-- lsp
require('lspconfig')
require('plugin_config/lsp')
require('plugin_config/completion')

