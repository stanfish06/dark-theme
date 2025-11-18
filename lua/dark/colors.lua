local utils = require 'dark.utils'

-- TODO: color gradients
local colors = {
  bg         = '#1E1E1E',
  fg         = '#EBEBEB',
  yellow     = '#FFF244',
  yellowgray = '#B1AC8C',
  darkgreen  = '#66BB6A',
  green      = '#66EB66',
  greengray  = '#A4B5A7',
  darkblue   = '#0000CC',
  cyan       = '#2AA198',
  cyandim    = '#00787A',
  blue       = '#9CCFD8',
  bluegray   = '#b8c0e0',
  purpleblue = '#889AFF',
  darkred    = '#B22222',
  red        = '#EB6F92',
  coolgray   = '#F9FAFB',
  teal       = '#4DB5BD',
  purple     = '#E1BEE9',
}

local gray_colors = utils.grayGen(10)
for cname, hex in pairs(gray_colors) do
   colors[cname] = hex
end

local pal_colors = utils.palGen(10, 12, 0.4)
for cname, hex in pairs(pal_colors) do
   colors[cname] = hex
end
return colors
