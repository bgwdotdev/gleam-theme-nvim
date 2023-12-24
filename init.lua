local colour = {
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

vim.cmd("highlight clear")
vim.api.nvim_set_hl(0, "Normal", { bg = colour.black2, fg = colour.white })
vim.api.nvim_set_hl(0, "Function", { fg = colour.code_light_pink })
vim.api.nvim_set_hl(0, "Number", { fg = colour.code_yellow })
vim.api.nvim_set_hl(0, "String", { fg = colour.code_green })
vim.api.nvim_set_hl(0, "Operator", { fg = colour.code_pink })
vim.api.nvim_set_hl(0, "Identifier", { fg = colour.white })
vim.api.nvim_set_hl(0, "Keyword", { fg = colour.code_orange })
vim.api.nvim_set_hl(0, "LineNr", { fg = colour.code_grey })
vim.api.nvim_set_hl(0, "Comment", { fg = colour.code_grey })
vim.api.nvim_set_hl(0, "Type", { fg = colour.code_blue })
vim.api.nvim_set_hl(0, "Conditional", { fg = colour.code_orange })
vim.api.nvim_set_hl(0, "PreProc", { fg = colour.code_light_pink })
vim.api.nvim_set_hl(0, "PreCondit", { fg = colour.code_light_pink })
vim.api.nvim_set_hl(0, "Constant", { fg = colour.code_blue })
vim.api.nvim_set_hl(0, "Bool", { fg = colour.code_blue })
vim.api.nvim_set_hl(0, "Delimiter", { fg = colour.code_pink })
vim.api.nvim_set_hl(0, "Special", { fg = colour.code_blue })
vim.api.nvim_set_hl(0, "Pmenu", { bg = colour.code_charcoal })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colour.code_yellow })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colour.code_red })
vim.api.nvim_set_hl(0, "Error", { fg = colour.code_red })
vim.api.nvim_set_hl(0, "Whitespace", { fg = colour.code_grey })
vim.api.nvim_set_hl(0, "NonText", { fg = colour.code_grey })
vim.api.nvim_set_hl(0, "Statement", { fg = colour.code_orange })
vim.api.nvim_set_hl(0, "Todo", { fg = colour.faff_pink })
vim.api.nvim_set_hl(0, "StatusLine", { bg = colour.faff_pink, fg = colour.charcoal })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colour.grey })
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colour.code_green })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colour.code_orange })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colour.code_red })
vim.api.nvim_set_hl(0, "Visual", { bg = colour.unexpected_aubergine })
