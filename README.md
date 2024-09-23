# NeoVim Custom configurations
Welcome to my custom NeoVim setup! This configuration is designed to enhance your productivity with carefully selected plugins and intuitive key mappings. Save time by using a well-tuned setup instead of hunting for the perfect configurations yourself.

## Prerequisite
Neovim needs a special font to show the special symbols, icons also so we have to install first from link download: [Nerd font](https://www.nerdfonts.com/font-downloads), my personal favorite font is [Jetbrains Mono](https://www.programmingfonts.org/#jetbrainsmono)

## Neovim Plugin Configurations
| id  | name                           | github link                             | short description                                                                                            |
|-----|--------------------------------|-----------------------------------------|--------------------------------------------------------------------------------------------------------------|
| 1   | lazy.nvim            ![github_stars](https://img.shields.io/github/stars/folke/lazy.nvim)          | [folke/lazy.nvim](https://github.com/folke/lazy.nvim)                    | A simple plugin manager for Neovim, designed for speed.                     |
| 2   | plenary.nvim         ![github_stars](https://img.shields.io/github/stars/nvim-lua/plenary.nvim)          | [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)        | A library of Lua functions used by many Neovim plugins.                     |
| 3   | nvim-treesitter      ![github_stars](https://img.shields.io/github/stars/nvim-treesitter/nvim-treesitter)          | [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Advanced syntax highlighting and code parsing.                 |
| 4   | kanagawa.nvim        ![github_stars](https://img.shields.io/github/stars/rebelot/kanagawa.nvim)          | [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)        | A colorscheme inspired by the colors of the Kanagawa region.                |
| 5   | nvim-web-devicons    ![github_stars](https://img.shields.io/github/stars/nvim-tree/nvim-web-devicons)          | [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | Adds file icons for Neovim, enhancing the UI experience.               |
| 6   | lualine.nvim         ![github_stars](https://img.shields.io/github/stars/nvim-lualine/lualine.nvim)          | [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | A fast and easy-to-configure statusline plugin.                            |
| 7   | nvim-ts-autotag      ![github_stars](https://img.shields.io/github/stars/windwp/nvim-ts-autotag)          | [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)     | Auto-close and rename HTML tags using treesitter.                            |
| 8   | telescope.nvim       ![github_stars](https://img.shields.io/github/stars/nvim-telescope/telescope.nvim)          | [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Highly extendable fuzzy finder over lists.                         |
| 9   | dashboard-nvim       ![github_stars](https://img.shields.io/github/stars/nvimdev/dashboard-nvim)          | [nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)      | A simple dashboard for Neovim with shortcuts.                               |
| 10  | neo-tree.nvim        ![github_stars](https://img.shields.io/github/stars/nvim-neo-tree/neo-tree.nvim)          | [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | A file explorer for Neovim, providing a tree-like view.                |
| 11  | nvim-colorizer.lua   ![github_stars](https://img.shields.io/github/stars/norcalli/nvim-colorizer.lua)          | [orcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) | Display color codes in files by highlighting them.                       |
| 12  | toggleterm.nvim      ![github_stars](https://img.shields.io/github/stars/akinsho/toggleterm.nvim)          | [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)    | A terminal emulator for Neovim that allows for multiple instances.          |
| 13  | markview.nvim        ![github_stars](https://img.shields.io/github/stars/OXY2DEV/markview.nvim)          | [OXY2DEV/markview.nvim](https://github.com/OXY2DEV/markview.nvim)        | A markdown viewer for Neovim with live preview.                             |
| 14  | barbar.nvim          ![github_stars](https://img.shields.io/github/stars/romgrk/barbar.nvim)          | [romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim)              | A tabline plugin that displays buffers in a user-friendly way.              |
| 15  | nui.nvim             ![github_stars](https://img.shields.io/github/stars/MunifTanjim/nui.nvim)          | [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)          | A UI component library for Neovim.                                          |
| 16  | notify.nvim          ![github_stars](https://img.shields.io/github/stars/rcarriga/nvim-notify)          | [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)          | A notification manager for Neovim, allowing for customizable notifications. |
| 17  | noice.nvim           ![github_stars](https://img.shields.io/github/stars/folke/noice.nvim)          | [folke/noice.nvim](https://github.com/folke/noice.nvim)                  | A popup UI for notifications, messages, and command outputs.                |
| 18  | mason.nvim           ![github_stars](https://img.shields.io/github/stars/williamboman/mason.nvim)          | [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)    | Manage and install external editor tooling like LSP servers.                |
| 19  | nvim-lspconfig       ![github_stars](https://img.shields.io/github/stars/neovim/nvim-lspconfig)          | [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)        | Quickstart configurations for the Neovim LSP client.                        |
| 20  | lspkind-nvim         ![github_stars](https://img.shields.io/github/stars/onsails/lspkind-nvim)          | [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)          | Adds icons to LSP completions for better visual indication.                 |
| 21  | none-ls.nvim         ![github_stars](https://img.shields.io/github/stars/nvimtools/none-ls.nvim)          | [nvimtools/none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)      | Inject LSP diagnostics, code actions, and more.              |
| 22  | nvim-cmp             ![github_stars](https://img.shields.io/github/stars/hrsh7th/nvim-cmp)          | [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                  | A completion framework for Neovim.                                          |
| 23  | cmp-nvim-lsp         ![github_stars](https://img.shields.io/github/stars/hrsh7th/cmp-nvim-lsp)          | [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)          | LSP source for nvim-cmp, providing completion from LSP.                     |
| 24  | cmp-path             ![github_stars](https://img.shields.io/github/stars/hrsh7th/cmp-path)          | [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)                  | Path completion source for nvim-cmp.                                        |
| 25  | cmp-buffer           ![github_stars](https://img.shields.io/github/stars/hrsh7th/cmp-buffer)          | [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)              | Buffer completion source for nvim-cmp.                                      |
| 27  | actions-preview.nvim ![github_stars](https://img.shields.io/github/stars/aznhe21/actions-preview.nvim)          | [aznhe21/actions-preview.nvim](https://github.com/aznhe21/actions-preview.nvim) | Preview code actions in Neovim.                                      |
| 28  | gitsigns.nvim        ![github_stars](https://img.shields.io/github/stars/lewis6991/gitsigns.nvim)          | [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)   | Git integration for buffers.                           |
| 29  | nvim-autopairs       ![github_stars](https://img.shields.io/github/stars/windwp/nvim-autopairs)          | [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)        | Automatically add closing pairs for brackets and quotes.                    |
| 30  | Comment.nvim         ![github_stars](https://img.shields.io/github/stars/numToStr/Comment.nvim)          | [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)        | Easily comment and uncomment lines in Neovim.                               |
| 31  | nvim-nio             ![github_stars](https://img.shields.io/github/stars/nvim-neotest/nvim-nio)          | [nvim-neotest/nvim-nio](https://github.com/nvim-neotest/nvim-nio)       | A library for asynchronous IO in Neovim.                                           |
| 32  | dap-ui               ![github_stars](https://img.shields.io/github/stars/rcarriga/nvim-dap-ui)          | [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)         | UI for the Debug Adapter Protocol in Neovim.                                 |
| 33  | nvim-dap             ![github_stars](https://img.shields.io/github/stars/mfussenegger/nvim-dap)          | [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)       | Debug Adapter Protocol client implementation for Neovim.                     |
| 34  | rustaceanvim         ![github_stars](https://img.shields.io/github/stars/mrcjkb/rustaceanvim)          | [mrcjkb/rustaceanvim](https://github.com/mrcjkb/rustaceanvim)           | Rust-specific configurations and features for Neovim.                        |

## Install 
### 1. Plugin manager
In the project we are going to use the [Lazy.nvim](https://github.com/folke/lazy.nvim) one of the most popular plugin manager repositories

### 2. Clone the configuration repository
Just execute command for specific platform

**Unix, Linux Installation**
```bash
git clone https://github.com/secretdeveloperisme/nvim-config ~/.config/nvim
```

**Windows Powershell Installation**
```bash
git clone https://github.com/secretdeveloperisme/nvim-config %USERPROFILE%\AppData\Local\nvim
```

### 3. Update plugins
Open neovim and execute command `:Lazy update`

### 4. Install LSP servers

- Open mason by executing command `:Mason`
- Then find the corresponding LSP languages that you want to install as clangd(C/C++), rust-analyzer(rust)...
- If you would like to install debugger adapter protocol (DAP) servers, just navigate to the DAP tab and install the dap for appropriate languages.
## Extra configurations
### Clipboard 
To copy and paste in neovim, we need to configured an clipboard provider. On ubuntu `xclip` is one of the most popular clipboard providers:
```bash
sudo apt install xclip
```
### find files with searching content(ripgrep) 
ripgrep recursively searches directories for a regex pattern while respecting your gitignore 
```bash
sudo apt-get install ripgrep
```
### fd
A simple, fast and user-friendly alternative to 'find' 
```bash
sudo apt install fd-find
```

