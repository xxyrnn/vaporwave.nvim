local M = {}

local colors = require("vaporwave.palette")

M.setup = function()
    return {
        --[[ STANDARD --]]

        Normal = { fg = colors.fg, bg = colors.bg0 },
        NormalNC = { fg = colors.grey1 },
        NormalFloat = { fg = colors.fg, bg = colors.bg1 },
        FloatBorder = { fg = colors.grey1 },
        Cursor = { fg = colors.fg },
        TermCursor = { link = "Cursor" },
        TermCursorNC = { link = "Cursor" },
        Visual = { fg = colors.bg3, bg = colors.accent },
        VisualNOS = { fg = colors.accent },
        NonText = { fg = colors.grey0 },
        SpecialKey = { fg = colors.grey0 },
        Conceal = { link = "NonText" },
        EndOfBuffer = { link = "NonText" },
        Whitespace = { link = "NonText" },

        Comment = { fg = colors.grey0, italic = true },
        SpecialComment = { fg = colors.green, italic = true },
        Todo = { fg = colors.orange },

        Constant = { fg = colors.red },
        String = { fg = colors.green },
        Character = { fg = colors.green },
        Number = { fg = colors.orange },
        Boolean = { fg = colors.orange },
        Float = { fg = colors.orange },
        Delimiter = { fg = colors.fg },
        Tag = { fg = colors.orange },

        Identifier = { fg = colors.yellow },
        Function = { fg = colors.cyan },

        Statement = { fg = colors.purple },
        Conditional = { fg = colors.purple },
        Repeat = { fg = colors.purple },
        Label = { fg = colors.purple },
        Operator = { fg = colors.fg },
        Keyword = { fg = colors.purple },
        Keywords = { fg = colors.purple },
        Exception = { fg = colors.purple },

        PreProc = { fg = colors.grey0 },
        Include = { fg = colors.purple },
        Define = { fg = colors.cyan },
        Macro = { fg = colors.cyan },
        PreCondit = { fg = colors.cyan },
        Debug = { fg = colors.purple },

        Type = { fg = colors.purple },
        StorageClass = { fg = colors.purple },
        Structure = { fg = colors.purple },
        TypeDef = { fg = colors.purple },

        Special = { fg = colors.orange },
        Underlined = { fg = colors.blue, underline = true },
        Title = { fg = colors.accent },
        FloatTitle = { link = "Title" },
        FloatFooter = { link = "FloatTitle" },
        Error = { fg = colors.red, undercurl = true },
        Ignore = { link = "NonText" },

        CursorLine = { bg = colors.bg3 },
        CursorColumn = { bg = colors.bg1 },
        CursorLineNr = { fg = colors.fg, bold = true },
        LineNr = { fg = colors.accent },
        LineNrAbove = { link = "LineNr" },
        LineNrBelow = { link = "LineNr" },
        ColorColumn = { link = "NonText" },
        SignColumn = { bg = colors.bg0 },
        FoldColumn = { fg = colors.grey0, bg = colors.bg0 },
        Folded = { fg = colors.grey0 },
        MatchParen = { bg = colors.bg3 },

        Search = { bg = colors.bg3 },
        IncSearch = { fg = colors.bg3, bg = colors.accent },
        QuickFixLine = { fg = colors.bg3, bg = colors.accent },

        Pmenu = { link = "NormalFloat" },
        PmenuSel = { fg = colors.bg3, bg = colors.accent },
        PmenuKind = { link = "Pmenu" },
        PmenuKindSel = { link = "PmenuSel" },
        PmenuExtra = { link = "Pmenu" },
        PmenuExtraSel = { link = "PmenuSel" },
        PmenuMatch = { link = "Pmenu" },
        PmenuMatchSel = { link = "PmenuSel" },
        PmenuSbar = { bg = colors.bg0 },
        PmenuThumb = { bg = colors.grey0 },
        WildMenu = { fg = colors.bg1, bg = colors.grey1 },

        StatusLine = { fg = colors.fg, bg = colors.bg1 },
        StatusLineNC = { fg = colors.grey1 },
        StatusLineTerm = { link = "StatusLine" },
        StatusLineTermNC = { link = "StatusLineNC" },
        TabLine = { fg = colors.grey0 },
        TabLineSel = { fg = colors.accent },
        TabLineFill = { bg = colors.bg0 },
        WinBar = { link = "StatusLine" },
        WinBarNC = { link = "StatusLineNC" },
        WinSeparator = { fg = colors.bg3 },

        MsgArea = { link = "Normal" },
        MsgSeparator = { link = "WinSeparator" },
        ErrorMsg = { fg = colors.red },
        WarningMsg = { fg = colors.yellow },
        OkMsg = { fg = colors.green },
        ModeMsg = { fg = colors.accent, bg = colors.bg0 },
        MoreMsg = { fg = colors.fg },
        Question = { link = "MoreMsg" },
        Directory = { fg = colors.blue },

        DiffAdd = { fg = colors.green },
        DiffChange = { fg = colors.orange },
        DiffDelete = { fg = colors.red },
        DiffText = { fg = colors.grey0 },
        Added = { link = "DiffAdd" },
        Changed = { link = "DiffChange" },
        Removed = { link = "DiffDelete" },

        SpellBad = { fg = colors.green, undercurl = true },
        SpellCap = { link = "SpellBad" },
        SpellLocal = { link = "SpellBad" },
        SpellRare = { link = "SpellBad" },

        Terminal = { link = "Normal" },

        --[[ TREESITTER --]]

        ["@comment"] = { link = "Comment" },
        ["@comment.documentation"] = { fg = colors.green },
        ["@comment.error"] = { fg = colors.red },
        ["@comment.warning"] = { fg = colors.yellow },
        ["@comment.todo"] = { link = "Todo" },
        ["@comment.note"] = { fg = colors.green },

        ["@variable"] = { link = "Identifier" },
        ["@variable.builtin"] = { fg = colors.purple },
        ["@variable.parameter"] = { fg = colors.cyan },
        ["@variable.parameter.builtin"] = { link = "@variable.builtin" },
        ["@property"] = { fg = colors.yellow },

        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { fg = colors.orange },
        ["@constant.macro"] = { fg = colors.red },
        ["@string"] = { link = "String" },
        ["@string.escape"] = { fg = colors.orange },
        ["@string.regexp"] = { fg = colors.orange },
        ["@string.special"] = { fg = colors.cyan },
        ["@string.special.symbol"] = { fg = colors.purple },
        ["@character"] = { link = "Character" },
        ["@character.special"] = { fg = colors.orange },
        ["@number"] = { link = "Number" },
        ["@number.float"] = { link = "@number" },
        ["@boolean"] = { link = "Boolean" },

        ["@function"] = { fg = colors.yellow },
        ["@function.call"] = { fg = colors.cyan },
        ["@function.builtin"] = { link = "@function.call" },
        ["@function.macro"] = { link = "@function.call" },
        ["@function.method"] = { link = "@function" },
        ["@function.method.call"] = { link = "@function.call" },
        ["@constructor"] = { fg = colors.green },

        ["@keyword"] = { link = "Keyword" },
        ["@keyword.directive"] = { link = "PreProc" },
        ["@keyword.directive.define"] = { link = "Define" },
        ["@label"] = { link = "Label" },

        ["@operator"] = { fg = colors.fg },

        ["@type"] = { fg = colors.purple },
        ["@type.builtin"] = { link = "@type" },
        ["@type.definition"] = { link = "@type" },

        ["@module"] = { fg = colors.purple },
        ["@attribute"] = { fg = colors.grey0 },
        ["@attribute.builtin"] = { link = "@attribute" },

        ["@punctuation.delimiter"] = { link = "Delimiter" },
        ["@punctuation.bracket"] = { fg = colors.fg },
        ["@punctuation.special"] = { fg = colors.orange },

        ["@tag"] = { link = "Tag" },
        ["@tag.attribute"] = { fg = colors.cyan },
        ["@tag.delimiter"] = { fg = colors.fg },

        ["@markup"] = { fg = colors.fg },
        ["@markup.heading"] = { fg = colors.accent },
        ["@markup.strong"] = { fg = colors.fg, bold = true },
        ["@markup.italic"] = { fg = colors.fg, italic = true },
        ["@markup.underline"] = { fg = colors.fg, underline = true },
        ["@markup.strikethrough"] = { fg = colors.fg, strikethrough = true },
        ["@markup.raw"] = { fg = colors.fg, bg = colors.bg1 },
        ["@markup.quote"] = { fg = colors.fg, bg = colors.bg1 },
        ["@markup.link"] = { fg = colors.fg },
        ["@markup.link.url"] = { fg = colors.blue, underline = true },
        ["@markup.link.label"] = { fg = colors.blue },
        ["@markup.list"] = { fg = colors.accent },
        ["@markup.math"] = { fg = colors.fg },

        ["@error"] = { fg = colors.red, undercurl = true },
        ["@warning"] = { fg = colors.yellow, undercurl = true },
        ["@info"] = { fg = colors.green, undercurl = true },
        ["@hint"] = { fg = colors.blue, undercurl = true },

        ["@diff.plus"] = { fg = colors.green },
        ["@diff.minus"] = { fg = colors.red },
        ["@diff.delta"] = { fg = colors.yellow },

        --[[ LSP --]]

        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.number"] = { link = "@number" },
        ["@lsp.type.string"] = { link = "@string" },
        ["@lsp.type.namespace"] = { link = "@module" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.class"] = { fg = colors.green },
        ["@lsp.type.struct"] = { fg = colors.purple },
        ["@lsp.type.enum"] = { fg = colors.purple },
        ["@lsp.type.enumMember"] = { fg = colors.cyan },
        ["@lsp.type.interface"] = { fg = colors.cyan },
        ["@lsp.type.typeParameter"] = { fg = colors.purple },
        ["@lsp.type.event"] = { fg = colors.orange },
        ["@lsp.type.decorator"] = { link = "PreProc" },
        ["@lsp.type.macro"] = { fg = colors.yellow },
        ["@lsp.type.function"] = { fg = colors.cyan },
        ["@lsp.type.method"] = { fg = colors.cyan },
        ["@lsp.type.parameter"] = { fg = colors.yellow },
        ["@lsp.type.property"] = { fg = colors.purple },
        ["@lsp.type.variable"] = { link = "@variable" },

        ["@lsp.mod.deprecated"] = { link = "NonText" },

        DiagnosticError = { fg = colors.red },
        DiagnosticWarn = { fg = colors.yellow },
        DiagnosticInfo = { fg = colors.green },
        DiagnosticHint = { fg = colors.blue },
        DiagnosticDeprecated = { fg = colors.grey0, strikethrough = true },
        DiagnosticUnnecessary = { fg = colors.grey0 },
        DiagnosticUnderlineError = { undercurl = true },
        DiagnosticUnderlineWarn = { undercurl = true },
        DiagnosticUnderlineInfo = { undercurl = true },
        DiagnosticUnderlineHint = { undercurl = true },

        DiagnosticFloatingError = { link = "DiagnosticError" },
        DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
        DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
        DiagnosticFloatingHint = { link = "DiagnosticHint" },

        LspReferenceText = { fg = colors.yellow, bg = colors.bg3 },
        LspReferenceRead = { fg = colors.yellow, bg = colors.bg3 },
        LspReferenceWrite = { fg = colors.yellow, bg = colors.bg3 },
        LspCodeLens = { fg = colors.grey0 },

        --[[ HTML --]]

        htmlComment = { link = "@comment" },
        htmlTag = { link = "@tag.delimiter" },
        htmlEndTag = { link = "@tag.delimiter" },
        htmlTagName = { link = "@tag" },
        htmlTagN = { link = "htmlTagName" },
        htmlSpecialTagName = { link = "htmlTagName" },
        htmlTagError = { fg = colors.red },
        htmlArg = { link = "@tag.attribute" },

        htmlSpecialChar = { fg = colors.orange },

        htmlBold = { fg = colors.fg, bold = true },
        htmlItalic = { fg = colors.fg, italic = true },
        htmlBoldItalic = { fg = colors.fg, bold = true, italic = true },
        htmlUnderline = { fg = colors.fg, underline = true },
        htmlUnderlineItalic = { fg = colors.fg, underline = true, italic = true },
        htmlBoldUnderlineItalic = { fg = colors.fg, bold = true, underline = true, italic = true },
        htmlStrike = { fg = colors.fg, strikethrough = true },

        htmlH1 = { link = "@markup.heading" },
        htmlH2 = { link = "htmlH1" },
        htmlH3 = { link = "htmlH1" },
        htmlH4 = { link = "htmlH1" },
        htmlH5 = { link = "htmlH1" },
        htmlH6 = { link = "htmlH1" },
        htmlTitle = { fg = colors.fg },

        htmlLink = { fg = colors.blue, underline = true },

        --[[ MARKDOWN --]]

        markdownH1 = { link = "@markup.heading" },
        markdownH2 = { link = "markdownH1" },
        markdownH3 = { link = "markdownH1" },
        markdownH4 = { link = "markdownH1" },
        markdownH5 = { link = "markdownH1" },
        markdownH6 = { link = "markdownH1" },
        markdownHeadingDelimiter = { link = "NonText" },
        markdownHeadingRule = { link = "NonText" },

        markdownBold = { link = "htmlBold" },
        markdownItalic = { link = "htmlItalic" },
        markdownBoldItalic = { link = "htmlBoldItalic" },

        markdownCode = { fg = colors.fg, bg = colors.bg1 },
        markdownCodeBlock = { fg = colors.fg, bg = colors.bg1 },
        markdownCodeDelimiter = { fg = colors.grey0 },

        markdownListMarker = { fg = colors.accent },
        markdownOrderedListMarker = { fg = colors.accent },
        markdownBlockquote = { fg = colors.grey0 },

        markdownLinkText = { fg = colors.fg },
        markdownLinkDelimiter = { fg = colors.fg },
        markdownUrl = { fg = colors.blue, underline = true },
        markdownUrlDelimiter = { link = "markdownLinkDelimiter" },
        markdownId = { fg = colors.blue },
        markdownIdDeclaration = { fg = colors.blue },
        markdownIdDelimiter = { fg = colors.fg },

        markdownRule = { link = "NonText" },

        --[[ DIFF --]]

        diffAdded = { link = "@diff.plus" },
        diffChanged = { link = "@diff.delta" },
        diffRemoved = { link = "@diff.minus" },
        diffFile = { fg = colors.grey0 },
        diffOldFile = { fg = colors.red },
        diffNewFile = { fg = colors.green },
        diffFileId = { link = "diffFile" },

        --[[ DEBUGGER --]]

        debugBreakpoint = { fg = colors.red, reverse = true },
        debugPC = { fg = colors.fg, bg = colors.bg3 },

        --[[ TODO-COMMENTS --]]

        TodoBgFIX = { fg = colors.fg, bg = colors.red },
        TodoFgFIX = { link = "@comment.error" },
        TodoBgWARN = { fg = colors.bg3, bg = colors.yellow },
        TodoFgWARN = { link = "@comment.warning" },
        TodoBgHACK = { fg = colors.fg, bg = colors.blue },
        TodoFgHACK = { fg = colors.blue },
        todoBgTODO = { fg = colors.fg, bg = colors.orange },
        todoFgTODO = { link = "@comment.todo" },
        TodoBgNOTE = { fg = colors.bg3, bg = colors.green },
        TodoFgNOTE = { link = "@comment.note" },

        --[[ BUFFERLINE --]]

        BufferLineIndicatorSelected = { fg = colors.accent },
        BufferLineFill = { bg = colors.bg0 },
        BufferLineBufferSelected = { bg = colors.bg1 },
        BufferLineSeparator = { fg = colors.bg3 },

        --[[ GITSIGNS --]]

        GitSignsAdd = { fg = colors.green },
        GitSignsChange = { fg = colors.yellow },
        GitSignsDelete = { fg = colors.red },
        GitSignsUntracked = { fg = colors.grey0 },

        GitSignsAddLn = { fg = colors.bg3, bg = colors.green },
        GitSignsChangeLn = { fg = colors.bg3, bg = colors.yellow },
        GitSignsDeleteLn = { fg = colors.bg3, bg = colors.red },

        GitSignsAddNr = { fg = colors.green },
        GitSignsChangeNr = { fg = colors.yellow },
        GitSignsDeleteNr = { fg = colors.red },

        GitSignsCurrentLineBlame = { fg = colors.grey0 },

        --[[ NVIM-TREE --]]

        NvimTreeNormal = { fg = colors.fg, bg = colors.bg1 },
        NvimTreeNormalNC = { link = "NormalNC" },
        NvimTreeWinSeparator = { link = "WinSeparator" },
        NvimTreeCursorLine = { link = "CursorLine" },

        NvimTreeRootFolder = { fg = colors.fg, bold = true },
        NvimTreeFolderName = { fg = colors.blue },
        NvimTreeOpenedFolderName = { fg = colors.blue, bold = true },
        NvimTreeEmptyFolderName = { fg = colors.grey0 },
        NvimTreeFolderIcon = { link = "NvimTreeFolderName" },

        NvimTreeSpecialFile = { fg = colors.fg },
        NvimTreeImageFile = { fg = colors.purple },
        NvimTreeExecFile = { fg = colors.green },
        NvimTreeOpenedFile = { bold = true },
        NvimTreeModifiedFile = { fg = colors.yellow },
        NvimTreeSymlink = { fg = colors.cyan },
        NvimTreeSymlinkFolderName = { link = "NvimTreeSymlink" },

        NvimTreeGitDirtyIcon = { fg = colors.green },
        NvimTreeGitNewIcon = { fg = colors.cyan },
        NvimTreeGitUnstagedIcon = { fg = colors.orange },
        NvimTreeGitStagedIcon = { fg = colors.accent },
        NvimTreeGitDeletedIcon = { fg = colors.red },
        NvimTreeGitMergeIcon = { fg = colors.purple },
        NvimTreeGitRenamedIcon = { fg = colors.yellow },
        NvimTreeGitIgnoredIcon = { fg = colors.grey0 },

        NvimTreeGitDirtyFile = { link = "NvimTreeGitDirtyIcon" },
        NvimTreeGitNewFile = { link = "NvimTreeGitNewIcon" },
        NvimTreeGitUnstagedFile = { link = "NvimTreeGitUnstagedIcon" },
        NvimTreeGitStagedFile = { link = "NvimTreeGitStagedIcon" },
        NvimTreeGitDeletedFile = { link = "NvimTreeGitDeletedIcon" },
        NvimTreeGitMergeFile = { link = "NvimTreeGitMergeIcon" },
        NvimTreeGitRenamedFile = { link = "NvimTreeGitRenameIcon" },
        NvimTreeGitIgnoredFile = { link = "NvimTreeGitIgnoredIcon" },

        NvimTreeDiagnosticErrorIcon = { link = "DiagnosticError" },
        NvimTreeDiagnosticWarnIcon = { link = "DiagnosticWarn" },
        NvimTreeDiagnosticInfoIcon = { link = "DiagnosticInfo" },
        NvimTreeDiagnosticHintIcon = { link = "DiagnosticHint" },

        NvimTreeIndentMarker = { link = "NonText" },

        NvimTreeWindowPicker = { fg = colors.bg3, bg = colors.accent, bold = true },

        --[[ NEOTREE --]]

        NeoTreeNormal = { link = "NvimTreeNormal" },
        NeoTreeNormalNC = { link = "NvimTreeNormalNC" },
        NeoTreeDirectoryName = { link = "NvimTreeFolderName" },
        NeoTreeGitUnstaged = { link = "NvimTreeGitUnstagedFile" },
        NeoTreeGitModified = { link = "NvimTreeGitDirtyFile" },
        NeoTreeGitUntracked = { fg = colors.cyan },
        NeoTreeDirectoryIcon = { link = "NvimTreeFolderIcon" },
        NeoTreeIndentMarker = { link = "NonText" },
        NeoTreeDotfile = { link = "Comment" },

        --[[ NVIM-CMP --]]

        CmpItemAbbr = { link = "Pmenu" },
        CmpItemKind = { link = "Special" },

        CmpItemKindFunction = { link = "@function" },
        CmpItemKindMethod = { link = "@function.method" },
        CmpItemKindConstructor = { link = "@constructor" },

        CmpItemKindVariable = { link = "@variable" },
        CmpItemKindField = { link = "@variable.member" },
        CmpItemKindProperty = { link = "@property" },
        CmpItemKindConstant = { link = "@constant" },
        CmpItemKindValue = { link = "@number" },
        CmpItemKindEnumMember = { link = "@lsp.type.enumMember" },

        CmpItemKindClass = { link = "@lsp.type.class" },
        CmpItemKindStruct = { link = "@lsp.type.struct" },
        CmpItemKindInterface = { link = "@lsp.type.interface" },
        CmpItemKindEnum = { link = "@lsp.type.enum" },
        CmpItemKindTypeParameter = { link = "@lsp.type.typeParameter" },
        CmpItemKindUnit = { link = "@number" },

        CmpItemKindModule = { link = "@module" },
        CmpItemKindReference = { link = "@markup.link" },

        CmpItemKindKeyword = { link = "@keyword" },
        CmpItemKindOperator = { link = "@operator" },
        CmpItemKindEvent = { link = "@keyword" },
        CmpItemKindSnippet = { link = "Special" },
        CmpItemKindText = { link = "@string" },

        CmpItemAbbrMatch = { link = "Search" },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
        CmpItemAbbrDeprecated = { fg = colors.grey0, strikethrough = true },
        CmpItemMenu = { link = "Comment" },

        --[[ RAINBOW DELIMITER --]]

        RainbowDelimiterRed = { fg = colors.red },
        RainbowDelimiterYellow = {fg = colors.yellow },
        RainbowDelimiterBlue = {fg = colors.blue },
        RainbowDelimiterOrange = { fg = colors.orange },
        RainbowDelimiterGreen = { fg = colors.green },
        RainbowDelimiterViolet = { fg = colors.purple },
        RainbowDelimiterCyan = { fg = colors.cyan },
    }
end

return M
