-- reset stuffs
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- Uncache modules to force reload
package.loaded["usgc"] = nil
package.loaded["usgc.init"] = nil
package.loaded["usgc.theme"] = nil
package.loaded["usgc.colors"] = nil
require("usgc.theme").setup("epitaxy")
