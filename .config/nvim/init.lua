-- Plugins setup using packer
require("plugins")

-- Core settings
require("core.keymaps")
require("core.colorscheme")
require("core.options")

-- Plugin settings
require("plugins.comment")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.nvim-cmp")
require("plugins.lsp.mason")
require("plugins.lsp.lspconfig")
require("plugins.lsp.lspsaga")
require("plugins.lsp.null-ls")
require("plugins.autopairs")
require("plugins.gitsigns")
require("plugins.treesitter")
