local utils = require 'dark.utils'

-- TODO: color gradients
local colors = {
  -- bg       = '#1E1E1E',
  -- fg       = '#EBEBEB',
  fg          = '#D8D4CD',
  bg          = '#101520',
  bg2         = '#101015',
  orange      = '#FF6600',
  yellow      = '#FFF244',
  yellowgrn   = '#EFEF00',
  yellowgrn2  = '#DFFF00',
  yellowgray  = '#B1AC8C',
  dimyellow   = '#D9D8AA',
  darkgreenp  = '#11262D',
  darkgreen   = '#66BB6A',
  green       = '#66EB66',
  greengray   = '#A4B5A7',
  cyan        = '#2AA198',
  cyandim     = '#00787A',
  azure       = '#B3DAF9',
  blue        = '#9CCFD8',
  darkblue    = '#0000CC',
  bluegray    = '#B8C0E0',
  purpleblue  = '#889AFF',
  darkred     = '#B22222',
  red         = '#EB6F92',
  coolgray    = '#F9FAFB',
  darkgray    = '#2F3949',
  teal        = '#4DB5BD',
  lightpurple = '#EDC7E7',
  purple      = '#E1BEE9',
}

local gray_colors = utils.grayGen(10)
for cname, hex in pairs(gray_colors) do
   colors[cname] = hex
end

local pal_colors = utils.palGen(20, 20, 0.4)
for cname, hex in pairs(pal_colors) do
   colors[cname] = hex
end
return colors
