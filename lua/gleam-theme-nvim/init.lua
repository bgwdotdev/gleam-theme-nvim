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
    DiagnosticWarn = { fg = M.color.code_yellow },
    DiagnosticError = { fg = M.color.code_red },
    Error = { fg = M.color.code_red },
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
