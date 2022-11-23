local status, packer = pcall(require, "packer")

if (not status) then
  print("Not Found Packer!")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- use {
  --   'svrana/neosolarized.nvim',
  --   requires = { 'tjdevries/colorbuddy.nvim' }
  -- }

  -- gruvbox
  use { "ellisonleao/gruvbox.nvim" }
  -- use "morhetz/gruvbox"

  -- нижняя строка статуса
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- LSP
  -- use 'neovim/nvim-lspconfig'
  use {
    'williamboman/nvim-lsp-installer',
    'neovim/nvim-lspconfig',
  }
  -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-buffer'
  -- nvim-cmp source for nvim's built-in LSP
  use 'hrsh7th/cmp-nvim-lsp'
  -- completion
  use 'hrsh7th/nvim-cmp'
  -- vscode-like pictograms
  use 'onsails/lspkind-nvim'

  -- use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'

  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  -- use {
  --   'nvim-treesitter/nvim-treesitter',
  --   run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  -- }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


  --
  --
  --

  -- use {
  --   'nvim-tree/nvim-tree.lua',
  --   requires = {
  --     'nvim-tree/nvim-web-devicons',
  --   },
  --   -- tag = 'nightly',
  -- }

  -- git diff
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
end)
