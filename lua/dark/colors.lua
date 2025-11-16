local utils = require 'dark.utils'

-- TODO: color gradients
local colors = {
  bg         = '#1E1E1E',
  fg 	     = '#EBEBEB',
  yellow     = '#FCE566',
  yellowgray = '#B1AC8C',
  darkgreen  = '#66BB6A',
  green      = '#A5D6A7',
  greengray  = '#A4B5A7',
  darkblue   = '#6694A9',
  cyan       = '#2AA198',
  blue       = '#88C0D0',
  bluegray   = '#b8c0e0',
  darkred    = '#B22222',
  red        = '#EB6F92',
  coolgray   = '#F9FAFB',
}

local gray_colors = utils.grayGen(10)
for cname, hex in pairs(gray_colors) do
   colors[cname] = hex
end

return colors
