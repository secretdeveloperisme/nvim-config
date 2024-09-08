local status, dashboard = pcall(require, "dashboard");
if not status then
  return
end
local logo = [[
  ██╗  ██╗ ██████╗  █████╗ ███╗   ██╗ ██████╗     ██╗     ██╗███╗   ██╗██╗  ██╗    ██████╗ ██╗     ██╗   ██╗███████╗
  ██║  ██║██╔═══██╗██╔══██╗████╗  ██║██╔════╝     ██║     ██║████╗  ██║██║  ██║    ██╔══██╗██║     ██║   ██║██╔════╝
  ███████║██║   ██║███████║██╔██╗ ██║██║  ███╗    ██║     ██║██╔██╗ ██║███████║    ██████╔╝██║     ██║   ██║███████╗
  ██╔══██║██║   ██║██╔══██║██║╚██╗██║██║   ██║    ██║     ██║██║╚██╗██║██╔══██║    ██╔═══╝ ██║     ██║   ██║╚════██║
  ██║  ██║╚██████╔╝██║  ██║██║ ╚████║╚██████╔╝    ███████╗██║██║ ╚████║██║  ██║    ██║     ███████╗╚██████╔╝███████║
  ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚══════╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝    ╚═╝     ╚══════╝ ╚═════╝ ╚══════╝
]]
logo = string.rep("\n", 3) .. logo .. "\n\n"

dashboard.setup {
  theme = 'hyper',
  config = {
    header = vim.split(logo, "\n"),
    shortcut = {
      {
        desc = 'Lazy Apps',
        group = 'DiagnosticHint',
        action = ':Lazy',
        icon = ' ',
        key = '<leader>a',
      },
      { desc = 'Update Apps',
        group = '@property',
        icon = '󰊳 ',
        action = ':Lazy update',
        key = '<leader>u'
      },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = ':Telescope find_files',
        key = '<leader>f',
      },
      {
        desc = '  Keymappings',
        group = 'Number',
        action = ':Telescope keymaps',
        key = '<leader>k',
      },
    },
    footer = {"Awesome neovim configurations collected by hoanglinhplus"}
  }
}
