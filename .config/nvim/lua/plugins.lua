local status, packer = pcall(require, "packer")
if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup({function(use)
	use 'wbthomason/packer.nvim'
	-- Your plugins go here
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'mhinz/vim-startify'
	use 'folke/tokyonight.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag='0.1.0',
		requires = {'nvim-lua/plenary.nvim'}
	}
	use 'nvim-telescope/telescope-file-browser.nvim'
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'mfussenegger/nvim-jdtls'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'norcalli/nvim-colorizer.lua'
end, })

