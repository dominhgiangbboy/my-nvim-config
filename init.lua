require('plugins')
require('base')
require('highlight')
require('maps')
require('configs/nvim_tree')
require('configs/flutter_tools_config')

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"

if is_mac then
  require('macos')
end
