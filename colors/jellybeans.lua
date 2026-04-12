-- reset stuffs
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- Uncache the module to force reload
package.loaded["jellybeans"] = nil
package.loaded["jellybeans.init"] = nil
package.loaded["jellybeans.theme"] = nil
vim.g.colors_name = "jellybeans"
require("jellybeans.init")
