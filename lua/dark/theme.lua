local M = {}
local colors = require 'dark.colors'
M.colors = colors

function M.Hi(group, fg, bg, bold, italic)
   if fg == nil then
      fg = colors.fg
   end
   if bg == nil then
      bg = colors.bg
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
   Normal           = { fg = colors.fg         , bg = colors.bg          , bold = false, italic = false }, 
   Terminal         = { fg = colors.fg         , bg = colors.bg          , bold = false, italic = false },
   Visual           = { fg = colors.fg         , bg = colors.gray7       , bold = false, italic = false },
   Comment          = { fg = colors.gray8      , bg = colors.bg          , bold = true , italic = false },
   String           = { fg = colors.green      , bg = colors.bg          , bold = false, italic = false },
   Function         = { fg = colors.purpleblue , bg = colors.bg          , bold = false, italic = false },
   Keyword          = { fg = colors.yellow     , bg = colors.bg          , bold = false, italic = false },
   Type             = { fg = colors.blue       , bg = colors.bg          , bold = false, italic = false },
   LineNr           = { fg = colors.gray8      , bg = colors.bg          , bold = false, italic = false },
   CursorLineNr     = { fg = colors.yellow     , bg = colors.bg          , bold = false, italic = false },
   StatusLine       = { fg = colors.fg         , bg = colors.pal_h_11_L_7, bold = true , italic = false },
   StatusLineNC	    = { fg = colors.gray1      , bg = colors.pal_h_7_L_9 , bold = false, italic = true  },
   StatusLineTerm   = { fg = colors.fg         , bg = colors.pal_h_6_L_7 , bold = true , italic = false },
   StatusLineTermNC = { fg = colors.fg         , bg = colors.pal_h_6_L_7 , bold = false, italic = true  },
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
