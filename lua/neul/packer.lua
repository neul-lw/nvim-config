--, This file can be loaded by calling `lua require('plugins')` ,from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
  use {
      'nvim-telescope/telescope.nvim', --tag = '0.1.0',
                                  branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- Lsp and Mason 
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    }

 -- Autocompletion
  use {
        {'hrsh7th/nvim-cmp'},
  	    {'hrsh7th/cmp-buffer'},
  	    {'hrsh7th/cmp-path'},
  	    {'saadparwaiz1/cmp_luasnip'},
  	    {'hrsh7th/cmp-nvim-lsp'},
  	    {'hrsh7th/cmp-nvim-lua'},
        {'hrsh7th/cmp-cmdline'},
    }

  -- Snippets
  use {
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }

  use('mfussenegger/nvim-dap')
  use{
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use('nvim-tree/nvim-web-devicons')
  use{'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim'}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use ('jose-elias-alvarez/null-ls.nvim')
  use ("ray-x/lsp_signature.nvim")
  -- Colorschemes
  use ('catppuccin/nvim')
  use ("EdenEast/nightfox.nvim")
  use ("rose-pine/neovim")
  use {'nyoom-engineering/oxocarbon.nvim'}
  use ("olimorris/onedarkpro.nvim")
  use {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
      end
        }
end)
