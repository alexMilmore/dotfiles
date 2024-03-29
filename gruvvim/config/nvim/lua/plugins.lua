local execute = vim.api.nvim_command
local fn = vim.fn

-- Make sure packer exists
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --	print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    --	print(ok, err, code)
    if ok then
        vim.cmd("packadd " .. plugin)
    end
    return ok, err, code
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua
-- require("packer").use { 'ms-jpq/coq_nvim', branch = 'coq'}

return require("packer").startup(
    function(use)
        -- Packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"

        -- Pretty colours
        use "morhetz/gruvbox"
        use "pineapplegiant/spaceduck" -- { 'branch': 'main' }
        -- generates error colours from colour scheme
        use "folke/lsp-colors.nvim"

        -- Icons
        use "kyazdani42/nvim-web-devicons"

        -- Statusline
        use "hoob3rt/lualine.nvim"
        requires = {"kyazdani42/nvim-web-devicons", opt = true}

        -- Better quotes, brackets, xml etc
        use "tpope/vim-surround"

        -- Better commenting
        use "tpope/vim-commentary"

        -- Better git
        use "tpope/vim-fugitive"
        use "airblade/vim-gitgutter"
        use "sindrets/diffview.nvim"

        -- syntax highlighting for toml
        -- use 'cespare/vim-toml'

        -- maximise a vim split
        use 'szw/vim-maximizer'

        -- vim debugger
        -- use 'puremourning/vimspector'

        -- vim fuzzy finder
        use 'nvim-lua/popup.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'

        -- file tree
        use 'preservim/nerdtree'

        -- startup time tracker
        use 'tweekmonster/startuptime.vim'

        -- treesitter
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

        -- language server
        use "neovim/nvim-lspconfig"

        -- autocomplete
        use "nvim-lua/completion-nvim"

        -- linter
	    use "mfussenegger/nvim-lint"

        -- code completion
        use { 'ms-jpq/coq_nvim', branch = 'coq'}
        use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

        -- git worktrees
        use "ThePrimeagen/git-worktree.nvim"

        -- nvim in the browser
        -- Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

        -- plantUML ascii in vim
        -- Plug 'scrooloose/vim-slumlord'

        -- Better lsp diplay
        use({
          "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
          config = function()
            require("lsp_lines").setup()
          end,
        })

    end
)
