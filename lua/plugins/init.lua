vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "EdenEast/nightfox.nvim"
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nanozuki/tabby.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'nvim-tree/nvim-tree.lua' }
  use { 'nvim-tree/nvim-web-devicons' }
  use { 'gen740/SmoothCursor.nvim',
    config = function()
      require('smoothcursor').setup()
    end
  }
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {
	  "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "folke/which-key.nvim"
  use { 'neoclide/coc.nvim', branch = 'release' }
end)
