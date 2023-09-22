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

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nordtheme/vim'

    use 'kyazdani42/nvim-web-devicons'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() require 'setup.lualine' end
    }      

    use {
        'romgrk/barbar.nvim', requires = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        config = function() require('setup.barbar') end
    }

    use {
        'nmac427/guess-indent.nvim',
        config = function() require('guess-indent').setup {} end,
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
    })

    use {
        'neovim/nvim-lspconfig',
        config = function() require('setup.lspconfig') end
    }

    use {
        'hrsh7th/nvim-cmp',
        requires = { 'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline' },
        config = function() require('setup.nvim-cmp') end
    }

    use {
        'L3MON4D3/LuaSnip',
        run = "make install_jsregexp"
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = function() require('setup.nvim-treesitter') end,
    }

    use 'arkav/lualine-lsp-progress'

     use {
        "lukas-reineke/indent-blankline.nvim",
        config = function() require('setup.indent-blankline') end
    }

    use {
        'numToStr/Comment.nvim',
        config = function() require('setup.Comment') end
    }

    use { 
        'lervag/vimtex', 
        config = function() require ('setup.tex') end
    }

    use 'KeitaNakamura/tex-conceal.vim'


    
  if packer_bootstrap then
    require('packer').sync()
  end
end)
