local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then return end

treesitter.setup {
    highlight = {
        enable = true,
    },
    indent = { enable = true },
    autotag = { enable = true },
    ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "python",
        "rust",
        "c",
        "cpp",
    },
    auto_install = true,
}
