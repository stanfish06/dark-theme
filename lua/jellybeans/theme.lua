local M = {}
local colors = {
    fg          = '#D8D4CD',
    bg          = '#151515',
    col_stl     = '#101520',
    col_func    = '#FAD07A',
    col_str     = '#66EB66',
    col_kwd     = '#C6B6EE',
    col_typ     = '#FFB964',
    col_comt    = '#888888',
    col_vis     = '#404040'
}

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
   Normal           = { fg = colors.fg      , bg = colors.bg     , bold = false, italic = false },
   Terminal         = { fg = colors.fg      , bg = colors.bg     , bold = false, italic = false },
   Visual           = { fg = colors.fg      , bg = colors.col_vis, bold = false, italic = false },
   Comment          = { fg = colors.col_comt, bg = colors.bg     , bold = true , italic = false },
   String           = { fg = colors.col_str , bg = colors.bg     , bold = false, italic = false },
   Function         = { fg = colors.col_func, bg = colors.bg     , bold = false, italic = false },
   Keyword          = { fg = colors.col_kwd , bg = colors.bg     , bold = false, italic = false },
   Type             = { fg = colors.col_typ , bg = colors.bg     , bold = false, italic = false },
   LineNr           = { fg = colors.col_cmt , bg = colors.bg     , bold = false, italic = false },
   CursorLineNr     = { fg = colors.col_kwd , bg = colors.bg     , bold = false, italic = false },
   StatusLine       = { fg = colors.fg      , bg = colors.col_stl, bold = true , italic = false },
   StatusLineNC     = { fg = colors.fg      , bg = colors.col_stl, bold = false, italic = true  },
   StatusLineTerm   = { fg = colors.fg      , bg = colors.col_stl, bold = true , italic = false },
   StatusLineTermNC = { fg = colors.fg      , bg = colors.col_stl, bold = false, italic = true  },
}

function M.setup()
   if vim.g.colors_name then
      vim.cmd("hi clear")
   end
   vim.g.colors_name = "jellybeans"
   for group, setup in pairs(syntax_highlight) do
      M.Hi(group, setup.fg, setup.bg, setup.bold, setup.italic)
   end
end

return M
