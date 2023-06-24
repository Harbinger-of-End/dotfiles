local ok, mason = pcall(require, "mason")
if not ok then return end

local ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok then return end

local ok, mason_null_ls = pcall(require, "mason-null-ls")
if not ok then return end

mason.setup()

mason_lspconfig.setup {
    ensure_installed = {
        "tsserver",
        "cssls",
        "html",
        "tailwindcss",
        "lua_ls",
        "emmet_ls",
    },
}

mason_null_ls.setup {
    ensure_installed = {
        "prettier",
        "stylua",
        "eslint_d",
    },
    automatic_installation = true,
}
