local status, dashboard = pcall(require, "dashboard");
if not status then
  return
end
dashboard.setup {
  theme = 'hyper',
  config = {
    -- week_header = {
    --   enable = true,
    -- },
    shortcut = {
      { desc = '󰊳 Update',
        group = '@property',
        action = ':PackerUpdate',
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
        desc = ' Apps',
        group = 'DiagnosticHint',
        action = ':PackerStatus',
        key = '<leader>a',
      },
      {
        desc = '  Keymappings',
        group = 'Number',
        action = ':Telescope keymaps',
        key = '<leader>k',
      },
    },
  }
}
