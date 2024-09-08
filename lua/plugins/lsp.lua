return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("plugin_configs.mason-lsp")
        end,
        dependencies = {
            "williamboman/mason.nvim"
        }
    },
    -- nvim LSP
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("plugin_configs.lsp")
        end,
        keys = {
            -- Displays hover information about the symbol under the cursor
            { 'K',        '<cmd>lua vim.lsp.buf.hover()<cr>',           desc = "Hover" },

            -- Jump to the definition
            { 'gd',       '<cmd>lua vim.lsp.buf.definition()<cr>',      desc = "Go to definition" },

            -- Jump to declaration
            { 'gD',       '<cmd>lua vim.lsp.buf.declaration()<cr>',     desc = "Go to declaration" },

            -- Lists all the implementations for the symbol under the cursor
            { 'gi',       '<cmd>lua vim.lsp.buf.implementation()<cr>',  desc = "List all implementations" },

            -- Jumps to the definition of the type symbol
            { 'go',       '<cmd>lua vim.lsp.buf.type_definition()<cr>', desc = "Jumps to definition" },

            -- Lists all the references
            { 'gr',       '<cmd>lua vim.lsp.buf.references()<cr>',      desc = "List all the references" },

            -- Displays a function's signature information
            { 'gs',       '<cmd>lua vim.lsp.buf.signature_help()<cr>',  desc = "Displays a function's signature information" },

            -- Renames all references to the symbol under the cursor
            { '<F2>',     '<cmd>lua vim.lsp.buf.rename()<cr>',          desc = "Rename symbol" },

            -- Selects a code action available at the current cursor position
            { '<F4>',     '<cmd>lua vim.lsp.buf.code_action()<cr>',     desc = "Select Code actions" },
            { mode = 'x', '<F4>',                                       '<cmd>lua vim.lsp.buf.range_code_action()<cr>' },

            -- Show diagnostics in a floating window
            { 'gl',       '<cmd>lua vim.diagnostic.open_float()<cr>',   desc = "Show diagnostics" },

            -- Move to the previous diagnostic
            { '[d',       '<cmd>lua vim.diagnostic.goto_prev()<cr>',    desc = "Move to the previous diagnostic" },

            -- Move to the next diagnostic
            { ']d',       '<cmd>lua vim.diagnostic.goto_next()<cr>',    desc = "Move to the next diagnostic" },
        }
    },
    { "onsails/lspkind-nvim" },
    -- LSP diagnostics, code actions, and more via Lua.
    {
        "nvimtools/none-ls.nvim",
        config = function()
            require("plugin_configs.null-ls")
        end,
        dependencies = { "nvim-lua/plenary.nvim" },
    }
}
