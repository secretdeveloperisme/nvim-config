require("settings")
require("plugins")
require("maps")

-- colorscheme config: kanagawa
local themeStatus, kanagawa = pcall(require, "kanagawa")

vim.o.completeopt = "menuone,noselect"

if themeStatus then
    vim.cmd("colorscheme kanagawa")
else
    return
end
