local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- install with cmd :PackerSync

return require('packer').startup(function(use)

  -- theme
  use 'navarasu/onedark.nvim'

  -- package manager
  use 'wbthomason/packer.nvim'

  -- left side dictionary tree
  use 'nvim-tree/nvim-tree.lua'

  -- icons
  use 'nvim-tree/nvim-web-devicons'
  
  -- bottom bar
  use 'nvim-lualine/lualine.nvim'
  
  -- code editor syntax
  use 'nvim-treesitter/nvim-treesitter'
  
  -- finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- code language analys
  use 'neovim/nvim-lspconfig'

  -- dev plugins

  -- autofill
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
