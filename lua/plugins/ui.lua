return {
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("plugin_configs.treesitter")
    end
  },
  -- Theme kanagawa
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme kanagawa")
    end
  },
  -- Web devicons
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("plugin_configs.web_dev_icons")
    end,
  },
  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    config = function()
      require("plugin_configs.lualine")
    end,
    dependencies = { "nvim-web-devicons" },
  },
  { "windwp/nvim-ts-autotag", dependencies = { "nvim-treesitter/nvim-treesitter" } },
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ff", "<Cmd>Telescope find_files<cr>",  desc = "Telescope find files" },
      { "<leader>fg", "<Cmd>Telescope live_grep<cr>",   desc = "Telescope find grep" },
      { "<leader>fb", "<Cmd>Telescope buffers<cr>",     desc = "Telescope find buffer" },
      { "<leader>fh", "<Cmd>Telescope help_tags<cr>",   desc = "Telescope find help tags" },
      { "<leader>fs", "<Cmd>Telescope git_status<cr>",  desc = "Telescope git status" },
      { "<leader>fc", "<Cmd>Telescope git_commits<cr>", desc = "Telescope git commits" },
    }
  },
  -- Dashboard
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require("plugin_configs.dashboard")
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  -- NeoTree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "main",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>e", "<CMD>Neotree toggle<CR>", desc = "Neo tree toogle" },
      { "<leader>o", "<CMD>Neotree focus<CR>",  desc = "NeoTree focus" }
    }
  },
  -- Show colors
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" })
    end,
  },
  -- Toggle terminal
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    config = function()
      require("plugin_configs.toggleterm")
    end,
    keys = {
      { "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>", desc = "Toggle horizontal termial" },
      { "<leader>tv", "<CMD>ToggleTerm size=80 direction=vertical<CR>",   desc = "Toggle vertical termial" }
    }
  },
  -- Markdown preview
  {
    "ellisonleao/glow.nvim",
    config = function()
      require("glow").setup()
    end
  },
  -- Background Transparent
  {
    "xiyaowong/nvim-transparent",
    config = function()
      require("transparent").setup({
        extra_groups = {
          "BufferLineTabClose",
          "BufferlineBufferSelected",
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineSeparator",
          "BufferLineIndicatorSelected",
        },
        exclude_groups = {}
      })
    end,
  },
  -- Tab bar
  {
    "romgrk/barbar.nvim",
    event = "BufEnter",
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    keys = {
      -- Move to previous/next
      { '<A-,>',      '<Cmd>BufferPrevious<CR>' },
      { '<A-.>',      '<Cmd>BufferNext<CR>' },
      -- Re-order to previous/next
      { '<A-<>',      '<Cmd>BufferMovePrevious<CR>' },
      { '<A->>',      '<Cmd>BufferMoveNext<CR>' },
      -- Goto buffer in position...
      { '<A-1>',      '<Cmd>BufferGoto 1<CR>' },
      { '<A-2>',      '<Cmd>BufferGoto 2<CR>' },
      { '<A-3>',      '<Cmd>BufferGoto 3<CR>' },
      { '<A-4>',      '<Cmd>BufferGoto 4<CR>' },
      { '<A-5>',      '<Cmd>BufferGoto 5<CR>' },
      { '<A-6>',      '<Cmd>BufferGoto 6<CR>' },
      { '<A-7>',      '<Cmd>BufferGoto 7<CR>' },
      { '<A-8>',      '<Cmd>BufferGoto 8<CR>' },
      { '<A-9>',      '<Cmd>BufferGoto 9<CR>' },
      { '<A-0>',      '<Cmd>BufferLast<CR>' },
      -- Pin/unpin buffer
      { '<A-p>',      '<Cmd>BufferPin<CR>' },
      -- Close buffer
      { '<A-c>',      '<Cmd>BufferClose<CR>' },
      -- Wipeout buffer
      --                 :BufferWipeout
      -- Close commands
      --                 :BufferCloseAllButCurrent
      --                 :BufferCloseAllButPinned
      --                 :BufferCloseAllButCurrentOrPinned
      --                 :BufferCloseBuffersLeft
      --                 :BufferCloseBuffersRight
      -- Magic buffer-picking mode
      { '<C-p>',      '<Cmd>BufferPick<CR>' },
      -- Sort automatically by...
      { '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>' },
      { '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>' },
      { '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>' },
      { '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>' },

    }
  },
  --Noice
  { "MunifTanjim/nui.nvim" },
  { "rcarriga/nvim-notify",   opts = { stages = 'static' } },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("plugin_configs.noice")
    end
  }

}
