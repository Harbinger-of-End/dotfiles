vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local nvim_tree = require("nvim-tree")


nvim_tree.setup {
    filters = {
        exclude = {
            ".git",
        }
    },
}
