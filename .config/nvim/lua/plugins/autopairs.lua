local ok, autopairs = pcall(require, "nvim-autopairs")
if not ok then return end

autopairs.setup {
    check_ts = true,
    ts_config = {
        lua = { "string" },
        javascript = { "template_string" },
        java = false,
    },
}

local ok, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not ok then return end

local ok, cmp = pcall(require, "cmp")
if not ok then
  return
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
