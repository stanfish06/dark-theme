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
   Normal       = { fg = colors.fg         , bg = colors.bg   , bold = false, italic = false }, 
   Terminal     = { fg = colors.fg         , bg = colors.bg   , bold = false, italic = false },
   Visual       = { fg = colors.bg         , bg = colors.gray6, bold = false, italic = false },
   Comment      = { fg = colors.cyan_gen3  , bg = colors.bg   , bold = true , italic = true  },
   String       = { fg = colors.green_gen5 , bg = colors.bg   , bold = false, italic = false },
   Function     = { fg = colors.yellow_gen2, bg = colors.bg   , bold = false, italic = false },
   Type         = { fg = colors.blue_gen5  , bg = colors.bg   , bold = false, italic = false },
   LineNr       = { fg = colors.gray7      , bg = colors.bg   , bold = false, italic = false },
   CursorLineNr = { fg = colors.yellow_gen2, bg = colors.bg   , bold = false, italic = false },
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
