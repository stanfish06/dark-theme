-- adapted from https://github.com/usgraphics/usgc-themes.git (BSD-3, U.S. Graphics Company)
-- Standard colors and per-variant globals, copied from themes/sublime-text/USGC-<NAME>-ST.sublime-color-scheme
local M = {}

M.std = {
  black      = '#000000',
  white      = '#FFFFFF',
  fl_red     = '#FF0000',
  fl_green   = '#00FF00',
  fl_blue    = '#0000FF',
  fl_cyan    = '#00FFFF',
  fl_magenta = '#FF00FF',
  fl_yellow  = '#FFFF00',
  fl_orange  = '#FF6600',
  maroon     = '#660000',
  green      = '#00A645',
  blue       = '#000066',
  dimblue    = '#000C24',
  cyan       = '#006666',
  magenta    = '#660066',
  yellow     = '#FFBF00',
  olive      = '#666600',
  gray       = '#999999',
}
local s = M.std

M.variants = {
  reticle = {
    fg                  = s.green,
    caret               = s.white,
    selection           = s.white,
    selection_fg        = s.fl_blue,
    gutter_fg           = s.fl_red,
    line_highlight      = s.fl_blue,
    gutter_fg_highlight = s.white,
    dim                 = '#005323',
    bright              = s.fl_green,
  },
  polyimide = {
    fg                  = s.yellow,
    caret               = s.green,
    selection           = s.blue,
    selection_fg        = s.fl_cyan,
    gutter_fg           = s.fl_orange,
    line_highlight      = s.fl_blue,
    gutter_fg_highlight = s.white,
    dim                 = s.olive,
    bright              = s.fl_yellow,
  },
  epitaxy = {
    fg                  = s.fl_magenta,
    caret               = s.white,
    selection           = s.blue,
    selection_fg        = s.fl_yellow,
    gutter_fg           = s.fl_blue,
    line_highlight      = s.fl_yellow,
    gutter_fg_highlight = s.black,
    dim                 = s.magenta,
    bright              = s.white,
  },
  metalgate = {
    fg                  = s.fl_cyan,
    caret               = s.fl_blue,
    selection           = s.olive,
    selection_fg        = s.fl_yellow,
    gutter_fg           = s.fl_yellow,
    line_highlight      = s.fl_blue,
    gutter_fg_highlight = s.fl_cyan,
    dim                 = s.cyan,
    bright              = s.white,
  },
  dark = {
    fg                  = s.white,
    caret               = s.white,
    selection           = s.blue,
    selection_fg        = s.white,
    gutter_fg           = s.gray,
    line_highlight      = s.dimblue,
    gutter_fg_highlight = s.fl_yellow,
    dim                 = s.gray,
    bright              = s.fl_yellow,
    comment             = s.gray,
    string              = s.green,
    func                = s.yellow,
    keyword             = s.fl_yellow,
    type                = s.fl_cyan,
    chrome              = s.dimblue,
    mono                = false,
  },
}

local common = {
  bg          = s.black,
  gutter      = s.black,
  inactive    = s.gray,
  inactive_fg = s.fl_blue,
  error       = s.fl_red,
  warn        = s.fl_orange,
  info        = s.gray,
  add         = s.fl_green,
  change      = s.yellow,
  delete      = s.fl_red,
}

function M.get(name)
  local v = M.variants[name]
  if not v then
    error("usgc: unknown variant '" .. tostring(name) .. "'")
  end
  local c = {}
  for k, val in pairs(common) do c[k] = val end
  for k, val in pairs(v) do c[k] = val end
  c.mono    = v.mono ~= false
  c.comment = v.comment or c.dim
  c.string  = v.string or c.fg
  c.func    = v.func or c.fg
  c.keyword = v.keyword or c.bright
  c.type    = v.type or c.fg
  c.chrome  = v.chrome
  return c
end

return M
