-- reset stuffs
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- Uncache the module to force reload
package.loaded["dark"] = nil
package.loaded["dark.init"] = nil
package.loaded["dark.colors"] = nil
package.loaded["dark.theme"] = nil
vim.g.colors_name = "dark"
require("dark.init")
