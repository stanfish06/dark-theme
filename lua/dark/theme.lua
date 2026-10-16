local M = {}
local colors = require 'dark.colors'
M.colors = colors

function M.Hi(group, fg, bg, bold, italic)
   if fg == nil then
      fg = colors.fg
   end
   if bg == nil then
      bg = colors.bg2
   end
   vim.api.nvim_set_hl(
      0, group,
      {
         fg     = fg,
         bg     = bg,
         bold   = bold,
         italic = italic
      }
   )
end

local syntax_highlight = {
   Normal           = { fg = colors.fg        , bg = nil                , bold = false, italic = false },
   Terminal         = { fg = colors.fg        , bg = nil                , bold = false, italic = false },
   Visual           = { fg = "NONE"           , bg = colors.darkgray    , bold = false, italic = false },
   Comment          = { fg = colors.gray8     , bg = nil                , bold = true , italic = false },
   String           = { fg = colors.green     , bg = nil                , bold = false, italic = false },
   Number           = { fg = colors.orange    , bg = nil                , bold = false, italic = false },
   Boolean          = { fg = colors.yellowgrn2, bg = nil                , bold = false, italic = false },
   Identifier       = { fg = colors.bluegray  , bg = nil                , bold = false, italic = false },
   Function         = { fg = colors.dimyellow , bg = nil                , bold = false, italic = false },
   Keyword          = { fg = colors.yellow    , bg = nil                , bold = false, italic = false },
   Type             = { fg = colors.blue      , bg = nil                , bold = false, italic = false },
   LineNr           = { fg = colors.gray8     , bg = nil                , bold = false, italic = false },
   CursorLineNr     = { fg = colors.yellow    , bg = nil                , bold = false, italic = false },
   StatusLine       = { fg = colors.fg        , bg = colors.pal_h_12_L_6, bold = true , italic = false },
   StatusLineNC     = { fg = colors.gray1     , bg = colors.pal_h_12_L_6, bold = false, italic = true  },
   StatusLineTerm   = { fg = colors.fg        , bg = colors.pal_h_10_L_6, bold = true , italic = false },
   StatusLineTermNC = { fg = colors.fg        , bg = colors.pal_h_10_L_6, bold = false, italic = true  },
   TabLineSel       = { fg = colors.fg        , bg = nil          , bold = true , italic = false },
   TabLine          = { fg = colors.gray9     , bg = colors.gray6       , bold = false, italic = false },
   TabLineFill      = { fg = colors.fg        , bg = colors.gray6       , bold = false, italic = false },
}

function M.setup()
   if vim.g.colors_name then
      vim.cmd("hi clear")
   end
   vim.g.colors_name = "dark"
   for group, setup in pairs(syntax_highlight) do
      M.Hi(group, setup.fg, setup.bg, setup.bold, setup.italic)
   end
end

return M
