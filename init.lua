function MAP(mode, l, r, desc)
    vim.keymap.set(mode, l, r, { desc = desc })
end
require("config.lazy")
