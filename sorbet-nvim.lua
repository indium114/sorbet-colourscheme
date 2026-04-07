local colors = {
    bg            = "#2b2b3b",
    fg            = "#f3e2f3",
    cursor        = "#f3e2f3",
    selection     = "#5c5e7f",
    black         = "#2b2b3b",
    gray          = "#5f627c",
    red           = "#f9a4b2",
    green         = "#dcf7a6",
    yellow        = "#f7eaa6",
    blue          = "#a6dcf7",
    magenta       = "#c1a6f7",
    cyan          = "#a6f7cf",
    white         = "#f3e2f3",
    alt_white     = "#a6b3f7",
    ui_float      = "#3b3b4f",
}

if vim.g.colors_name then
    vim.cmd("hi clear")
end

vim.opt.termguicolors = true
vim.g.colors_name = "kitty_pastel"

local groups = {
    Normal          = { fg = colors.fg, bg = colors.bg },
    Cursor          = { fg = colors.bg, bg = colors.cursor },
    Visual          = { bg = colors.selection },
    LineNr          = { fg = colors.gray },
    CursorLineNr    = { fg = colors.magenta, bold = true },
    CursorLine      = { bg = "#34344a" },
    StatusLine      = { fg = colors.fg, bg = colors.selection },
    StatusLineNC    = { fg = colors.gray, bg = colors.bg },
    VertSplit       = { fg = colors.selection, bg = colors.bg },
    Pmenu           = { fg = colors.fg, bg = colors.ui_float },
    PmenuSel        = { fg = colors.bg, bg = colors.blue },
    Search          = { fg = colors.bg, bg = colors.yellow },
    IncSearch       = { fg = colors.bg, bg = colors.red },
    MatchParen      = { fg = colors.cyan, bold = true, underline = true },

    Comment         = { fg = colors.gray, italic = true },
    Constant        = { fg = colors.blue },
    String          = { fg = colors.green },
    Identifier      = { fg = colors.cyan },
    Function        = { fg = colors.blue, bold = true },
    Statement       = { fg = colors.magenta },
    PreProc         = { fg = colors.yellow },
    Type            = { fg = colors.alt_white },
    Special         = { fg = colors.red },
    Underlined      = { underline = true },
    Error           = { fg = colors.red, bold = true },
    Todo            = { fg = colors.bg, bg = colors.yellow, bold = true },

    ["@variable"]    = { fg = colors.fg },
    ["@keyword"]     = { fg = colors.magenta },
    ["@property"]    = { fg = colors.cyan },
    ["@parameter"]   = { fg = colors.red },
    ["@string"]      = { fg = colors.green },
    ["@function"]    = { fg = colors.blue },
    ["@operator"]    = { fg = colors.alt_white },
    ["@field"]       = { fg = colors.cyan },
    ["@type"]        = { fg = colors.alt_white },
}

for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
end
