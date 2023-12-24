local M = {}

M.color = {
    aged_plastic_yellow = "#fffbe8",
    black = "#1e1e1e",
    black2 = "#232628",
    blacker = "#151515",
    charcoal = "#2f2f2f",
    code_blue = "#9ce7ff",
    code_dark_grey = "#848484",
    code_green = "#c8ffa7",
    code_grey = "#d4d4d4",
    code_light_pink = "#ffddfa",
    code_orange = "#ffd596",
    code_pink = "#ffaff3",
    code_red = "#ff6262",
    code_yellow = "#fdffab",
    faff_pink = "#ffaff3",
    unexpected_aubergine = "#584355",
    unnamed_blue = "#a6f0fc",
    white = "#fefefc",
}

M.theme = {
    Normal = { bg = M.color.black2, fg = M.color.white },
    Function = { fg = M.color.code_light_pink },
    Number = { fg = M.color.code_yellow },
    String = { fg = M.color.code_green },
    Operator = { fg = M.color.code_pink },
    Identifier = { fg = M.color.white },
    Keyword = { fg = M.color.code_orange },
    LineNr = { fg = M.color.code_grey },
    Comment = { fg = M.color.code_grey },
    Type = { fg = M.color.code_blue },
    Conditional = { fg = M.color.code_orange },
    PreProc = { fg = M.color.code_light_pink },
    PreCondit = { fg = M.color.code_light_pink },
    Constant = { fg = M.color.code_blue },
    Bool = { fg = M.color.code_blue },
    Delimiter = { fg = M.color.code_pink },
    Special = { fg = M.color.code_blue },
    Pmenu = { bg = M.color.code_charcoal },
    DiagnosticWarn = { fg = M.color.code_orange },
    DiagnosticError = { fg = M.color.code_red },
    DiagnosticHint = { fg = M.color.unnamed_blue },
    DiagnosticOk = { fg = M.color.code_green },
    DiagnosticInfo = { fg = M.color.code_blue },
    DiagnosticUnderlineError = { sp = M.color.code_red, underline = true },
    DiagnosticUnderlineWarn = { sp = M.color.code_orange, underline = true },
    DiagnosticUnderlineHint = { sp = M.color.unnamed_blue, underline = true },
    DiagnosticUnderlineOk = { sp = M.color.code_green, underline = true },
    DiagnosticUnderlineInfo = { sp = M.color.code_blue, underline = true },
    Error = { fg = M.color.code_red },
    ErrorMsg = { bg = M.color.code_red, fg = M.color.charcoal },
    Whitespace = { fg = M.color.code_grey },
    NonText = { fg = M.color.code_grey },
    Statement = { fg = M.color.code_orange },
    Todo = { fg = M.color.faff_pink },
    StatusLine = { bg = M.color.faff_pink, fg = M.color.charcoal },
    StatusLineNC = { fg = M.color.grey },
    GitSignsAdd = { fg = M.color.code_green },
    GitSignsChange = { fg = M.color.code_orange },
    GitSignsDelete = { fg = M.color.code_red },
    Visual = { bg = M.color.unexpected_aubergine },
    Question = { fg = M.color.code_green, bold = true },
    SpellBad = { sp = M.color.code_red, undercurl = true },
    SpellCap = { sp = M.color.code_blue, undercurl = true },
    SpellRare = { sp = M.color.code_pink, undercurl = true },
    SpellLocal = { sp = M.color.code_green, undercurl = true },
    ColorColumn  = { bg = M.color.code_red },
    MatchParen = { bg = M.color.code_pink, fg = M.color.charcoal },

    CursorLineNr = { fg = M.color.code_light_pink },
    Search = { bg = M.color.unexpected_aubergine },
    SignColumn = { fg = M.color.code_light_pink },
    FoldColumn = { fg = M.color.code_light_pink },
    Underlined = { underline = true },
    Directory = { fg = M.color.code_pink },
    Title = { fg = M.color.code_orange },

    DiffAdd = { bg = M.color.code_green, fg = M.color.charcoal },
    DiffChange = { bg = M.color.code_orange, fg = M.color.charcoal },
    DiffDelete = { bg = M.color.code_red, fg = M.color.charcoal },
    DiffText = { bg = M.color.code_yellow, fg = M.color.charcoal },

    SpecialKey = { fg = M.color.code_orange },

    IblIndent = { fg = M.color.unexpected_aubergine },

    RedrawDebugClear = { bg = M.color.code_yellow },
    RedrawDebugComposed = { bg = M.color.code_green },
    RedrawDebugRecompose = { bg = M.color.code_red },
}

function M.load()
    vim.cmd("highlight clear")
    vim.g.colors_name = "gleam"
    vim.o.termguicolors = true
    for k, v in pairs(M.theme) do
        vim.api.nvim_set_hl(0, k, v)
    end
end

return M
