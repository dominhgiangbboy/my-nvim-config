-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Font copied from a Japanese guy
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  -- Github copilot
  use 'github/copilot.vim'
  -- Setup lualine for statusline
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- Nvim Flutter
  use 'dart-lang/dart-vim-plugin'
  use 'thosakwe/vim-flutter'
  use 'natebosch/vim-lsc'
  use 'natebosch/vim-lsc-dart'

  -- vscode like pictograms
  use 'onsails/lspkind-nvim'

  use 'L3MON4D3/LuaSnip' -- snippet engine
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  -- Telescopes
  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'} 
  }

  -- Nvim tree
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  --  lsp
  use {
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSP to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      
      -- Useful status updates for LSP
      'j-hui/fidget.nvim'
    }
  }
  -- Autocompletion
  use {
    'hrsh7th/nvim-cmp',
    requires ={
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
      return ':TSUpdate'
    end,
  } 


  --fzy
  use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
}  
end)
