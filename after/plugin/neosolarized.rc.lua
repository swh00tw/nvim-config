local status, n = pcall(require, "neosolarized")
if (not status) then return end

n.setup({
  comment_italics = true,
})

local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles

Color.new('white', '#ffffff')
Color.new('black', '#000000')
Group.new('Normal', colors.base1, colors.NONE, styles.NONE)
Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
Group.new('Visual', colors.none, colors.base03, styles.reverse)

local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

-- lspsaga
Group.new("HoverBorder", colors.yellow, colors.none, styles.NONE)
Group.new("RenameBorder", colors.yellow, colors.none, styles.NONE)
Group.new("DefinitionBorder", colors.yellow, colors.none, styles.NONE)
Group.new("FinderBorder", colors.yellow, colors.none, styles.NONE)
Group.new("FinderPreviewBorder", colors.yellow, colors.none, styles.NONE)

-- GitConflict
-- other group: https://github.com/akinsho/git-conflict.nvim/issues/52
Color.new('incomingBg', '#1e3450')
Color.new('currentBg', '#1a4a2a')
Color.new('incomingLabel', '#2e507d')
Color.new('currentLabel', '#297542')
Group.new("GitConflictIncoming", colors.none, colors.incomingBg, styles.NONE)
Group.new("GitConflictCurrent", colors.none, colors.currentBg, styles.NONE)
Group.new("GitConflictIncomingLabel", colors.none, colors.incomingLabel, styles.NONE)
Group.new("GitConflictCurrentLabel", colors.none, colors.currentLabel, styles.NONE)
