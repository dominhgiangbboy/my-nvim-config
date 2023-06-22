local status, n = pcall(require, 'neosolarized')
if (not status) then return end

n.setup({ commit_italics = true })

local colorbuddy = require('colorbuddy.init')
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles


Color.new('black', '#000000')
Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
Group.new('CursorLineNr', colors.base1, colors.base03, styles.NONE, colors.base1)
Group.new('Visual', colors.none, colors.base03, styles.reverse)

local cError = groups.Error.fg
local cWarn = groups.Warning.fg
local cInfo = groups.Information.fg
local cHint = groups.Hint.fg

Group.new('DiagnosticVirtualTextError', cError, cError:dark():dark():dark():dark(), styles.NONE)
Group.new('DiagnosticVirtualTextInfo', cInfo, cInfo:dark():dark():dark():dark(), styles.NONE)
Group.new('DiagnosticVirtualTextWarn', cWarn, cWarn:dark():dark():dark():dark(), styles.NONE)
