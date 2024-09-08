return {
    -- cmp: Autocomplete
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        config = function()
            require("plugin_configs.cmp")
        end,
    },
    { "hrsh7th/cmp-nvim-lsp" },

    { "hrsh7th/cmp-path",    dependencies = { "hrsh7th/nvim-cmp" } },

    { "hrsh7th/cmp-buffer",  dependencies = { "hrsh7th/nvim-cmp" } },
    {
        "L3MON4D3/LuaSnip",
    },
    -- Code Actions preview
    {
        "aznhe21/actions-preview.nvim",
        config = function()
            vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
        end,
    },
    -- Gitsigns
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("plugin_configs.gitsigns")
        end
    },
    -- Autopairs
    {
        "windwp/nvim-autopairs",
        config = function()
            require("plugin_configs.autopairs")
        end,
    },
    -- Comment
    {
        'numToStr/Comment.nvim',
        event = "BufEnter",
        config = function()
            require("plugin_configs.comment")
        end
    },

    -- Debugging
    { "nvim-neotest/nvim-nio" },
    {
        "mfussenegger/nvim-dap",
        config = function()
            require("plugin_configs.dap")
        end
    },
    { "rcarriga/nvim-dap-ui" },
    -- Rust tools
    {
        "mrcjkb/rustaceanvim",
        lazy = false,
        config = function()
            -- Rust mapping
            MAP('n', '<leader>rd', function()
                vim.cmd.RustLsp('debug')
            end, "Rust run debug")

            MAP('n', '<leader>rdd', function()
                vim.cmd.RustLsp('debuggables')
            end, "Rust debuggables")

            MAP('n', '<leader>rr', function()
                vim.cmd.RustLsp('run')
            end, "Rust run")

            MAP('n', '<leader>rrr', function()
                vim.cmd.RustLsp('runnables')
            end, "Rust runnables")

            MAP('n', '<leader>rh', function()
                vim.cmd.RustLsp { 'hover', 'actions' }
            end)
        end,
    }
}
