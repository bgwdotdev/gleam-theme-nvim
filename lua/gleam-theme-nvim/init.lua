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
    underwater_blue = "#292d3e",
    unexpected_aubergine = "#584355",
    unnamed_blue = "#a6f0fc",
    white = "#fefefc",
}

M.theme = {
    Bool = { fg = M.color.code_blue },
    ColorColumn  = { bg = M.color.code_red },
    Comment = { fg = M.color.code_grey },
    Conditional = { fg = M.color.code_orange },
    Constant = { fg = M.color.code_blue },
    CursorLineNr = { fg = M.color.code_light_pink },
    Delimiter = { fg = M.color.code_pink },
    DiagnosticError = { fg = M.color.code_red },
    DiagnosticHint = { fg = M.color.unnamed_blue },
    DiagnosticInfo = { fg = M.color.code_blue },
    DiagnosticOk = { fg = M.color.code_green },
    DiagnosticUnderlineError = { sp = M.color.code_red, underline = true },
    DiagnosticUnderlineHint = { sp = M.color.unnamed_blue, underline = true },
    DiagnosticUnderlineInfo = { sp = M.color.code_blue, underline = true },
    DiagnosticUnderlineOk = { sp = M.color.code_green, underline = true },
    DiagnosticUnderlineWarn = { sp = M.color.code_orange, underline = true },
    DiagnosticWarn = { fg = M.color.code_orange },
    DiffAdd = { bg = M.color.code_green, fg = M.color.charcoal },
    DiffChange = { bg = M.color.code_orange, fg = M.color.charcoal },
    DiffDelete = { bg = M.color.code_red, fg = M.color.charcoal },
    DiffText = { bg = M.color.code_yellow, fg = M.color.charcoal },
    Directory = { fg = M.color.code_pink },
    Error = { fg = M.color.code_red },
    ErrorMsg = { bg = M.color.code_red, fg = M.color.charcoal },
    FoldColumn = { fg = M.color.code_light_pink },
    Function = { fg = M.color.code_light_pink },
    GitSignsAdd = { fg = M.color.code_green },
    GitSignsChange = { fg = M.color.code_orange },
    GitSignsDelete = { fg = M.color.code_red },
    IblIndent = { fg = M.color.unexpected_aubergine },
    Identifier = { fg = M.color.white },
    Keyword = { fg = M.color.code_orange },
    LineNr = { fg = M.color.code_grey },
    MatchParen = { bg = M.color.code_pink, fg = M.color.charcoal },
    NonText = { fg = M.color.code_grey },
    Normal = { bg = M.color.underwater_blue, fg = M.color.white },
    NormalFloat = { bg = M.color.underwater_blue },
    Number = { fg = M.color.code_yellow },
    Operator = { fg = M.color.code_pink },
    Pmenu = { bg = M.color.code_charcoal },
    PreCondit = { fg = M.color.code_light_pink },
    PreProc = { fg = M.color.code_light_pink },
    Question = { fg = M.color.code_green, bold = true },
    RedrawDebugClear = { bg = M.color.code_yellow },
    RedrawDebugComposed = { bg = M.color.code_green },
    RedrawDebugRecompose = { bg = M.color.code_red },
    Search = { bg = M.color.unexpected_aubergine },
    SignColumn = { fg = M.color.code_light_pink },
    Special = { fg = M.color.code_blue },
    SpecialKey = { fg = M.color.code_orange },
    SpellBad = { sp = M.color.code_red, undercurl = true },
    SpellCap = { sp = M.color.code_blue, undercurl = true },
    SpellLocal = { sp = M.color.code_green, undercurl = true },
    SpellRare = { sp = M.color.code_pink, undercurl = true },
    Statement = { fg = M.color.code_orange },
    StatusLine = { bg = M.color.faff_pink, fg = M.color.charcoal },
    StatusLineNC = { fg = M.color.grey },
    String = { fg = M.color.code_green },
    Title = { fg = M.color.code_orange },
    Todo = { fg = M.color.faff_pink },
    Type = { fg = M.color.code_blue },
    Underlined = { underline = true },
    Visual = { bg = M.color.unexpected_aubergine },
    Whitespace = { fg = M.color.code_grey },
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
