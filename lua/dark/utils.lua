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
   -- based on [https://bottosson.github.io/posts/oklab/]
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

function rgb2hex(r, g, b)
   r = math.max(0, math.min(1, r))
   g = math.max(0, math.min(1, g))
   b = math.max(0, math.min(1, b))

   local r255 = math.floor(r * 255 + 0.5)
   local g255 = math.floor(g * 255 + 0.5)
   local b255 = math.floor(b * 255 + 0.5)

   return string.format("#%02x%02x%02x", r255, g255, b255)
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

return M
