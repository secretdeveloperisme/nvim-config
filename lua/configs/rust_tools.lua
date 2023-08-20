local rt = require("rust-tools")
local codelldb_path = "/home/hoanglinhplus/Programs/lldb/linux/adapter/codelldb"
local liblldb_path = "/home/hoanglinhplus/Programs/lldb/linux/adapter/libcodelldb.so"

rt.setup({
  dap = {
    adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
  },
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<leader>k", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  tools = {
    hover_actions = {
      auto_focus = true,
    },
  },
})
