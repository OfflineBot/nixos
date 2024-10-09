
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
    -- My plugins here

    -- core
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"
    use 'folke/which-key.nvim'
    use 'elkowar/yuck.vim'
    use {
        'nvim-treesitter/nvim-treesitter', 
        { run = ':TSUpdate' }
    }
    use "lukas-reineke/indent-blankline.nvim"
    use 'nvim-treesitter/playground'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    }
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    -- functionality
    use 'lervag/vimtex'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-sensible'
    use 'tpope/vim-surround'
    use 'mhinz/vim-signify'
    --use 'jiangmiao/auto-pairs' -- auto jumping enabled right now
    use 'm4xshen/autoclose.nvim'
    use 'alvan/vim-closetag'
    use 'tpope/vim-abolish'
    use 'junegunn/vim-easy-align'
    use 'scrooloose/nerdcommenter'
    use 'chrisbra/Colorizer'
    use 'KabbAmine/vCoolor.vim'
    use 'dkarter/bullets.vim'
    use 'wellle/context.vim'
    use 'antoinemadec/FixCursorHold.nvim'

    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }
    
    -- end of plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
