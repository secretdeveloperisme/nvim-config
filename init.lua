require("settings")
require("commands")
require("plugins")
require("maps")

-- colorscheme config: kanagawa
local themeStatus, _ = pcall(require, "kanagawa")

if themeStatus then
  vim.cmd("colorscheme kanagawa")
else
  return
end
