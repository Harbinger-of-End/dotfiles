local ok, lualine = pcall(require, "lualine")
if not ok then return end

local lualine_ayu_mirage = require("lualine.themes.ayu_mirage")

local colors = {
    blue = "#65D1FF",
    green = "#3EFFDC",
    violet = "#FF61EF",
    yellow = "#FFDA7B",
    black = "#000000",
}

lualine_ayu_mirage.normal.a.bg = colors.blue
lualine_ayu_mirage.insert.a.bg = colors.green
lualine_ayu_mirage.visual.a.bg = colors.violet
lualine_ayu_mirage.command = {
    a = {
        gui = "bold",
        bg = colors.yellow,
        fg = colors.black,
    },
}

lualine.setup {
    options = {
        theme = lualine_ayu_mirage,
    },
}
