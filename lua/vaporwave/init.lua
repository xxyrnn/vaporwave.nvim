local o = vim.o
local g = vim.g
local cmd = vim.cmd

local M = {}

local TRANSPARENTS = {
    "Normal",
    "SignColumn",
    "NvimTreeNormal",
    "NvimTreeVertSplit"
}

local function apply_term_colors(colors)
    g.terminal_color_0 = colors.black
    g.terminal_color_1 = colors.red
    g.terminal_color_2 = colors.green
    g.terminal_color_3 = colors.yellow
    g.terminal_color_4 = colors.purple
    g.terminal_color_5 = colors.pink
    g.terminal_color_6 = colors.cyan
    g.terminal_color_7 = colors.white
    g.terminal_color_8 = colors.bright_black
    g.terminal_color_9 = colors.red
    g.terminal_color_10 = colors.green
    g.terminal_color_11 = colors.yellow
    g.terminal_color_12 = colors.blue
    g.terminal_color_13 = colors.purple
    g.terminal_color_14 = colors.cyan
    g.terminal_color_15 = colors.bright_white
    g.terminal_color_background = colors.bg
    g.terminal_color_foreground = colors.fg
end

local function apply(opts)
    local colors = require("vaporwave.palette")
    apply_term_colors(colors)
    local groups = require("vaporwave.groups").setup()

    -- apply transparents
    if opts.transparent then
        for _, group in ipairs(TRANSPARENTS) do
            groups[group].bg = nil
        end
    end

    -- set defined highlights
    for group, setting in pairs(groups) do
        vim.api.nvim_set_hl(0, group, setting)
    end
end

M.opts = {
    italic_comment = true,
    transparent = false
}

M.setup = function(opts)
    M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
end

M.load = function()
    if vim.fn.has("nvim-0.10") ~= 1 then
        vim.notify("vaporwave.nvim: you must use neovim 0.10 or higher")
        return
    end

    -- reset colors
    if g.colors_name then
        cmd("hi clear")
    end

    if vim.fn.exists("syntax_on") then
        cmd("syntax reset")
    end

    o.background = "dark"
    o.termguicolors = true
    g.colors_name = "vaporwave"

    apply(M.opts)
end

return M
