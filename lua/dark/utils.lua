-- TODO: add color conversion functions from a colorspace to rgb to hex
-- oklab appears to be the most recent model?

local M = {}

-- L from 0 to 1
-- C has no bounds but better be below 0.4
-- h is angle
function oklch2rgb(L, C, h)
   -- convert to cartesian coords
   local a = C * math.cos(h)
   local b = C * math.sin(h)
   -- based on https://bottosson.github.io/posts/oklab/
   -- by Björn Ottosson
   local l_ = L + 0.3963377774 * a + 0.2158037573 * b
   local m_ = L - 0.1055613458 * a - 0.0638541728 * b
   local s_ = L - 0.0894841775 * a - 1.2914855480 * b

   local l = l_ * l_ * l_
   local m = m_ * m_ * m_
   local s = s_ * s_ * s_

   local r = 4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s
   local g = -1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s
   local b = -0.0041960863 * l - 0.7034186147 * m + 1.7076147010 * s

   return r, g, b
end

function rgb2oklch(r, g, b) 
   local l = 0.4122214708 * r + 0.5363325363 * g + 0.0514459929 * b
   local m = 0.2119034982 * r + 0.6806995451 * g + 0.1073969566 * b
   local s = 0.0883024619 * r + 0.2817188376 * g + 0.6299787005 * b

   local l_ = math.pow(l, 1/3);
   local m_ = math.pow(m, 1/3);
   local s_ = math.pow(s, 1/3);

   local L = 0.2104542553 * l_ + 0.7936177850 * m_ - 0.0040720468 * s_
   local a_ = 1.9779984951 * l_ - 2.4285922050 * m_ + 0.4505937099 * s_
   local b_ = 0.0259040371 * l_ + 0.7827717662 * m_ - 0.8086757660 * s_

   local C = math.sqrt(math.pow(a_, 2), math.pow(b_, 2))
   local h = math.atan2(b_, a_)

   return L, C, h
end

function rgb2hex(r, g, b)
   local r = math.max(0, math.min(1, r))
   local g = math.max(0, math.min(1, g))
   local b = math.max(0, math.min(1, b))

   local r255 = math.floor(r * 255 + 0.5)
   local g255 = math.floor(g * 255 + 0.5)
   local b255 = math.floor(b * 255 + 0.5)

   return string.format("#%02x%02x%02x", r255, g255, b255)
end

function hex2rgb(hex)
   local hex = hex:gsub("#", "")
   
   local r255 = tonumber(hex:sub(1, 2), 16)
   local g255 = tonumber(hex:sub(3, 4), 16)
   local b255 = tonumber(hex:sub(5, 6), 16)
   
   local r = r255 / 255
   local g = g255 / 255
   local b = b255 / 255
   
   return r, g, b
end

-- generate n gray colors from light to dark
function M.grayGen(n)
   local incre_L = 1 / (n - 1)
   local gray_colors = {}
   for i = 0, n - 1 do
      local l = i * incre_L
      local r, g, b = oklch2rgb(l, 0, 0)
      gray_colors["gray" .. i] = rgb2hex(r, g, b)
   end
   return gray_colors
end

-- generate n colors based on input hex with different lightness
function M.hexGen(hex, name, n, chroma)
   local r, g, b = hex2rgb(hex)
   local L, C, h = rgb2oklch(r, g, b)
   local incre_L = 1 / (n - 1)
   local colors = {}
   for i = 0, n - 1 do
      local l = i * incre_L
      local r_, g_, b_ = oklch2rgb(l, chroma, h)
      colors[name .. i] = rgb2hex(r_, g_, b_)
   end
   return colors
end

return M
