local colorscheme = {}

-- ADD SOMETHING THAT, GIVEN A WARP FILENAME, LOADS IN THE COLORS FROM THE FILE
-- todo
--     give a warp filename and read these values?
--     continue with the thing-specific colors...
--          fix the weird highlighting and stuff... for lualine and for neotree

local name = "HackMIT 2024"

local base_colors = {
    bg = "#0a1228",
    accent = "#e754ac",
    fg = "#fffcf0",
    black = "#444444",
    red = "#ff5555",
    green = "#c5f467",
    yellow = "#fdde7b",
    blue = "#bd93f9",
    magenta = "#ff79c6",
    cyan = "#5cecc6",
    white = "#c5d1eb",
    bright_black = "#8e8e8e",
    bright_red = "#ff7777",
    bright_green = "#c1f080",
    bright_yellow = "#ffda8a",
    bright_blue = "#caa9fa",
    bright_magenta = "#ff79c6",
    bright_cyan = "#7be9dd",
    bright_white = "#dfe5ee",
}

local colors = {
    red = base_colors.red,
    light_red = base_colors.bright_red,
    dark_red = base_colors.red,
    green = base_colors.bright_green,
    yellow = base_colors.yellow,
    dark_yellow = base_colors.magenta,
    blue = base_colors.blue,
    purple = base_colors.bright_blue,
    blue_purple = base_colors.bright_magenta,
    cyan = base_colors.cyan,
    white = base_colors.bright_white,
    black = base_colors.black,
    comment_grey = base_colors.bright_black,
    gutter_fg_grey = base_colors.bright_black,
    cursor_grey = base_colors.black,
    visual_grey = base_colors.black,
    menu_grey = base_colors.black,
    special_grey = base_colors.black,
    vertsplit = base_colors.black,
    white_mask_3 = base_colors.white,
}

local theme = {
    Comment = { fg = colors.comment_grey, gui = "italic", cterm = "italic" },
    Constant = { fg = colors.cyan },
    String = { fg = colors.green },
    Character = { fg = colors.green },
    Number = { fg = colors.dark_yellow },
    Boolean = { fg = colors.red },
    Float = { fg = colors.dark_yellow },
    Identifier = { fg = colors.red },
    Function = { fg = colors.blue },
    Statement = { fg = colors.purple },
    Conditional = { fg = colors.purple },
    Repeat = { fg = colors.purple },
    Label = { fg = colors.purple },
    Operator = { fg = colors.cyan },
    Keyword = { fg = colors.red },
    Exception = { fg = colors.purple },
    PreProc = { fg = colors.yellow },
    Include = { fg = colors.blue },
    Define = { fg = colors.purple },
    Macro = { fg = colors.purple },
    PreCondit = { fg = colors.yellow },
    Type = { fg = colors.yellow },
    StorageClass = { fg = colors.yellow },
    Structure = { fg = colors.yellow },
    Typedef = { fg = colors.yellow },
    Special = { fg = colors.blue },
    SpecialChar = {},
    Tag = {},
    Delimiter = {},
    SpecialComment = { fg = colors.comment_grey },
    Debug = {},
    Underlined = { gui = "underline", cterm = "underline" },
    Ignore = {},
    Error = { fg = colors.red },
    Todo = { fg = colors.purple },


    ColorColumn = {},
    Conceal = {},
    Cursor = { fg = colors.black, bg = colors.blue },
    CursorIM = {},
    CursorColumn = { bg = colors.cursor_grey },
    CursorLine = { bg = colors.cursor_grey },
    Directory = { fg = colors.blue },
    DiffAdd = { bg = colors.green, fg = colors.black },
    DiffChange = { bg = colors.yellow, fg = colors.black },
    DiffDelete = { bg = colors.red, fg = colors.black },
    DiffText = { bg = colors.black, fg = colors.yellow },
    ErrorMsg = { fg = colors.red },
    VertSplit = { fg = colors.vertsplit },
    Folded = { bg = colors.cursor_grey, fg = colors.comment_grey },
    FoldColumn = {},
    SignColumn = {},
    IncSearch = { fg = colors.yellow, bg = colors.comment_grey },
    LineNr = { fg = colors.gutter_fg_grey },
    CursorLineNr = {},
    MatchParen = { fg = colors.blue, gui = "underline" },
    ModeMsg = {},
    MoreMsg = {},
    NonText = { fg = colors.special_grey },
    Normal = { fg = colors.white, bg = base_colors.bg },
    Pmenu = { bg = colors.menu_grey },
    PmenuSel = { fg = colors.black, bg = colors.blue },
    PmenuSbar = { bg = colors.special_grey },
    PmenuThumb = { bg = colors.white },
    Question = { fg = colors.purple },
    Search = { fg = colors.black, bg = colors.yellow },
    SpecialKey = { fg = colors.special_grey },
    SpellBad = { fg = colors.red, gui = "underline", cterm = "underline" },
    SpellCap = { fg = colors.dark_yellow },
    SpellLocal = { fg = colors.dark_yellow },
    SpellRare = { fg = colors.dark_yellow },
    StatusLine = { fg = colors.white, bg = base_colors.bg },
    StatusLineNC = { fg = colors.comment_grey },
    TabLine = { fg = colors.comment_grey },
    TabLineFill = {},
    TabLineSel = { fg = colors.white },
    Title = { fg = colors.green },
    Visual = { bg = colors.visual_grey },
    VisualNOS = { bg = colors.visual_grey },
    WarningMsg = { fg = colors.yellow },
    WildMenu = { fg = colors.black, bg = colors.blue },


    -- treesitter
    ["@annotation"]            = { fg = colors.yellow },
    ["@attribute"]             = { fg = colors.light_red },
    ["@boolean"]               = { fg = colors.red, gui = "italic" },
    ["@character"]             = { fg = colors.green },
    ["@character.special"]     = { fg = colors.blue_purple },
    ["@comment"]               = { fg = colors.comment_grey },
    ["@conditional"]           = { fg = colors.purple },
    ["@constant"]              = { fg = colors.cyan },
    ["@constant.builtin"]      = { fg = colors.yellow },
    ["@constant.macro"]        = { fg = colors.dark_yellow },
    ["@constructor"]           = { fg = colors.white },
    ["@define"]                = { fg = colors.purple },
    ["@exception"]             = { fg = colors.purple },
    ["@field"]                 = { fg = colors.cyan },
    ["@float"]                 = { fg = colors.dark_yellow },
    ["@function"]              = { fg = colors.blue },
    ["@function.builtin"]      = { fg = colors.cyan },
    ["@function.call"]         = { fg = colors.blue },
    ["@function.macro"]        = { fg = colors.purple, gui = "italic" },
    ["@include"]               = { fg = colors.blue },
    ["@keyword"]               = { fg = colors.red, gui = "italic" },
    ["@keyword.function"]      = { fg = colors.blue_purple, gui = "italic" },
    ["@keyword.operator"]      = { fg = colors.white },
    ["@keyword.return"]        = { fg = colors.red },
    ["@label"]                 = { fg = colors.purple },
    ["@method"]                = { fg = colors.blue },
    ["@method.call"]           = { fg = colors.blue },
    ["@namespace"]             = { fg = colors.blue_purple },
    ["@number"]                = { fg = colors.dark_yellow },
    ["@operator"]              = { fg = colors.white },
    ["@parameter"]             = { fg = colors.white, gui = "italic" },
    ["@parameter.reference"]   = { fg = colors.menu_grey },
    ["@property"]              = { fg = colors.cyan },
    ["@punctuation.bracket"]   = { fg = colors.white },
    ["@punctuation.delimiter"] = { fg = colors.white },
    ["@punctuation.special"]   = { fg = colors.white },
    ["@repeat"]                = { fg = colors.purple },
    ["@storageclass"]          = { fg = colors.yellow, gui = "italic" },
    ["@string"]                = { fg = colors.green },
    ["@string.escape"]         = { fg = colors.visual_grey },
    ["@string.regex"]          = { fg = colors.white },
    ["@string.special"]        = { fg = colors.menu_grey },
    ["@symbol"]                = { fg = colors.red },
    ["@tag"]                   = { fg = colors.light_red },
    ["@tag.attribute"]         = { fg = colors.green },
    ["@tag.delimiter"]         = { fg = colors.white },
    ["@text.danger"]           = { fg = colors.dark_yellow },
    ["@text.emphasis"]         = { gui = "italic" },
    ["@text.environment"]      = { fg = colors.light_red },
    ["@text.environment.name"] = { fg = colors.cyan },
    ["@text.literal"]          = { fg = colors.yellow },
    ["@text.reference"]        = { fg = colors.cyan },
    ["@text.strike"]           = { gui = "strikethrough" },
    ["@text.strong"]           = { gui = "bold" },
    ["@text.title"]            = { fg = colors.yellow, gui = "bold" },
    ["@text.underline"]        = { gui = "underline" },
    ["@text.warning"]          = { fg = colors.yellow },
    ["@text.todo"]             = { fg = colors.purple },
    ["@type"]                  = { fg = colors.yellow },
    ["@type.builtin"]          = { fg = colors.dark_yellow },
    ["@type.qualifier"]        = { fg = colors.yellow },
    ["@variable"]              = { fg = colors.white },
    ["@variable.builtin"]      = { fg = colors.dark_yellow },

    -- neotree
    NeoTreeDirectoryIcon       = { fg = colors.blue },
    NeoTreeDirectoryName       = { fg = colors.green },
    NeoTreeFileIcon            = { fg = colors.white },
    NeoTreeFileName            = { fg = colors.white },
    NeoTreeFileNameOpened      = { fg = colors.white, bg = base_colors.fg },
    NeoTreeRootName            = { fg = colors.yellow, bold = true },
    NeoTreeSymbolicLinkTarget  = { fg = colors.red },
    NeoTreeGitModified         = { fg = colors.yellow },
    NeoTreeGitAdded            = { fg = colors.green },
    NeoTreeGitDeleted          = { fg = colors.red },
    NeoTreeGitConflict         = { fg = colors.red, bold = true },
    NeoTreeGitUntracked        = { fg = colors.yellow, italics = true },

}

local function apply_highlights(highlights)
    for group, opts in pairs(highlights) do
        local gui = opts.style and "gui=" .. opts.style or "gui=NONE"
        local guifg = opts.fg and "guifg=" .. opts.fg or "guifg=NONE"
        local guibg = opts.bg and "guibg=" .. opts.bg or "guibg = NONE"
        vim.cmd(string.format("highlight %s %s %s %s", group, gui, guifg, guibg))
    end
end

colorscheme.setup = function()
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = name

    apply_highlights(theme)

    vim.o.background = "dark"
end

return colorscheme
