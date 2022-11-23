require('base')
require('highlights')
require('maps')

local status, plugins = pcall(require, "plugins")
if (not status) then
  print("Not found Plugins!")
  return
end

-- local has = function(x) 
--   return vim.fn.has(x) == 1
-- end

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('macos')
end
if is_win then
  require('windows')
end
