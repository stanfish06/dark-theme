-- reset stuffs
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- Uncache modules to force reload
package.loaded["mfd"] = nil
package.loaded["mfd.init"] = nil
package.loaded["mfd.mfd-amber"] = nil
package.loaded["mfd.mfd-hud"] = nil
require("mfd.mfd-amber").setup()
