local setup, nvim_tree = pcall(require, "nvim-tree")
if not setup then return end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd [[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]]

nvim_tree.setup({
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                },
            },
        },
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
    filters = {
        custom = {
            "^.git$",
        },
    },
})

vim.api.nvim_create_autocmd(
    "VimEnter",
    {
        command = ":NvimTreeOpen",
    }
)

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})

