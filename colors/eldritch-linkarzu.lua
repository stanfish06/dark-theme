-- reset stuffs
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- Uncache the module to force reload
package.loaded["eldritch-linkarzu"] = nil
package.loaded["eldritch-linkarzu.init"] = nil
package.loaded["eldritch-linkarzu.colors"] = nil
package.loaded["eldritch-linkarzu.theme"] = nil
vim.g.colors_name = "eldritch-linkarzu"
require("eldritch-linkarzu.init")
