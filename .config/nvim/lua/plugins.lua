vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer.nvim for managing plugins
    use 'wbthomason/packer.nvim'
    -- COC for autocompletion
    use {
        'neoclide/coc.nvim',
        branch = 'release',
        run = 'yarn install --frozen-lockfile',
    }
    -- Treesitter for parsing
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    -- Ayu theme for Neovim
    use 'Shatur/neovim-ayu'
    -- nvim-tree for file navigation
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons'
    }
    -- Telescope for fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- Toggleterm for terminal
    use 'akinsho/toggleterm.nvim'
    -- Gitsigns for git integration
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup {
                signs                        = {
                    add          = { text = 'A' },
                    change       = { text = 'C' },
                    delete       = { text = 'D' },
                    topdelete    = { text = 'TD' },
                    changedelete = { text = 'CD' },
                    untracked    = { text = 'U' },
                },
                signcolumn                   = true,
                numhl                        = false,
                linehl                       = false,
                word_diff                    = false,
                watch_gitdir                 = {
                    interval = 1000,
                    follow_files = true
                },
                attach_to_untracked          = true,
                current_line_blame           = false,
                current_line_blame_opts      = {
                    virt_text = true,
                    virt_text_pos = 'eol',
                    delay = 1000,
                    ignore_whitespace = false,
                },
                current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
                sign_priority                = 6,
                update_debounce              = 100,
                status_formatter             = nil,
                max_file_length              = 40000,
                preview_config               = {
                    border = 'single',
                    style = 'minimal',
                    relative = 'cursor',
                    row = 0,
                    col = 1
                },
                yadm                         = {
                    enable = false
                },
            }
        end
    }
    -- vim-airline for statusbar
    use 'vim-airline/vim-airline'
    -- undotree for getting a tree of undos
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
end)
