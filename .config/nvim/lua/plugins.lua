local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system {
            "git",
            "clone",
            "--depth",
            "1",
            "https://github.com/wbthomason/packer.nvim",
            install_path,
        }
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

local packer_bootstrap = ensure_packer()
local status, packer = pcall(require, "packer")
if not status then return end

return packer.startup(function(use)
    use "wbthomason/packer.nvim"
    use "nvim-lua/plenary.nvim"

    -- Ayu colorscheme
    use "Shatur/neovim-ayu"

    -- Split window navigation
    use "christoomey/vim-tmux-navigator"

    -- Maximising and restoring current window
    use "szw/vim-maximizer"

    -- Surround motions
    use "tpope/vim-surround"

    -- Replace stuff with copied stuff
    use "vim-scripts/ReplaceWithRegister"

    -- Commenting using gc
    use "numToStr/Comment.nvim"

    -- File tree explorer
    use "nvim-tree/nvim-tree.lua"

    -- Devicons
    use "kyazdani42/nvim-web-devicons"

    -- Statusline
    use "nvim-lualine/lualine.nvim"

    -- Telescope fuzzy finder
    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
    }
    use "nvim-telescope/telescope.nvim"

    -- Autocompletion
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"

    -- Snippets
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"

    -- LSP server manager
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    -- Configuring LSP servers
    use "neovim/nvim-lspconfig"
    use "hrsh7th/cmp-nvim-lsp"
    use { "glepnir/lspsaga.nvim", branch = "main" }
    use "jose-elias-alvarez/typescript.nvim"
    use "onsails/lspkind.nvim"

    -- formatting & linting
    use("jose-elias-alvarez/null-ls.nvim")
    use("jayp0521/mason-null-ls.nvim")

    -- treesitter configuration
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update { with_sync = true }
            ts_update()
        end,
    }

    -- auto closing
    use "windwp/nvim-autopairs"
    use { "windwp/nvim-ts-autotag", after = "nvim-treesitter" }

    -- git integration
    use "lewis6991/gitsigns.nvim"

    -- Editorconfig support
    use "gpanders/editorconfig.nvim"

    -- Discord neovim rich presence
    use "andweeb/presence.nvim"

    -- Git integration
    use "tpope/vim-fugitive"

    if packer_bootstrap then
        packer.sync()
    end
end)
