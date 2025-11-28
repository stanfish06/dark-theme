-- reset stuffs
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- Uncache the module to force reload
package.loaded["compline"] = nil
package.loaded["compline.init"] = nil
package.loaded["compline.colors"] = nil
package.loaded["compline.theme"] = nil
vim.g.colors_name = "compline"
require("compline.init")
require('compline.theme').setup()
