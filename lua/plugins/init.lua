vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "EdenEast/nightfox.nvim"
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'rstacruz/vim-closer'
end)
