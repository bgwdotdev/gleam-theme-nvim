local colors = {
    black    = '#1e1e1e',
    blue     = '#ffaff3',
    charcoal = '#2f2f2f',
    gray     = '#d4d4d4',
    green    = '#c8ffa7',
    pink     = '#ffaff3',
    red      = '#ff6262',
    white    = '#fefefc',
    yellow   = '#fdffab',
}
return {
    normal = {
        a = { bg = colors.pink, fg = colors.black, gui = 'bold' },
        b = { bg = colors.charcoal, fg = colors.white },
        c = { bg = colors.black, fg = colors.white }
    },
    insert = {
        a = { bg = colors.orange, fg = colors.black, gui = 'bold' },
        b = { bg = colors.charcoal, fg = colors.white },
        c = { bg = colors.black, fg = colors.white }
    },
    visual = {
        a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
        b = { bg = colors.charcoal, fg = colors.white },
        c = { bg = colors.black, fg = colors.white }
    },
    replace = {
        a = { bg = colors.red, fg = colors.black, gui = 'bold' },
        b = { bg = colors.charcoal, fg = colors.white },
        c = { bg = colors.black, fg = colors.white }
    },
    command = {
        a = { bg = colors.green, fg = colors.black, gui = 'bold' },
        b = { bg = colors.charcoal, fg = colors.white },
        c = { bg = colors.black, fg = colors.white }
    },
    inactive = {
        a = { bg = colors.charcoal, fg = colors.gray, gui = 'bold' },
        b = { bg = colors.charcoal, fg = colors.gray },
        c = { bg = colors.charcoal, fg = colors.gray }
    }
}
