local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'glepnir/lspsaga.nvim'         --LSP UIs
  use 'L3MON4D3/LuaSnip'             -- Snippet
  use 'hoob3rt/lualine.nvim'         -- Statusline
  use 'onsails/lspkind-nvim'         -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'           -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'         -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'             -- Completion
  use 'neovim/nvim-lspconfig'        -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Use neovim as a languageserver to inject diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim'       -- Prettier plugin for Neovim's built-in client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'                         -- For git blame & browse
  use { 'akinsho/git-conflict.nvim', tag = "*" }    -- For git conflict

  use 'numToStr/Comment.nvim'                       -- Comment shortcut
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- Help comment.nvim for better commenting on files ike jsx/tsx

  use 'github/copilot.vim'                          --Copilot
  use 'andweeb/presence.nvim'                       --Discord presence
  use 'wakatime/vim-wakatime'                       --Wakatime
end)
