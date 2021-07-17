local compe_post = require('compe-config')
local ultisnips_post = require('ultisnips-config')
local telescope_post = require('telescope-config')
local treesitter_post = require('treesitter-config')
local lspconfig_post = require('lspconfig-config')

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local post_install = nil
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- The actual packer
	use "wbthomason/packer.nvim"

	use {"SirVer/ultisnips", config=ultisnips_post}
	-- use "honza/vim-snippets"
	-- use "norcalli/snippets.nvim"
	use {"hrsh7th/nvim-compe", config=compe_post}

	use {"neovim/nvim-lspconfig", config=lspconfig_post}
	use "folke/lua-dev.nvim"
	use {"nvim-treesitter/nvim-treesitter", run=":TSUpdate", config=treesitter_post}

	use {
		'nvim-telescope/telescope.nvim',
		config = telescope_post,
		requires = {
			{'nvim-lua/popup.nvim'}, 
			{'nvim-lua/plenary.nvim'}
		}
	}
end)
