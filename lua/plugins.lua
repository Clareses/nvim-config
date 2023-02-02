vim.cmd [[packadd packer.nvim]]

require('packer').init({
    git = { default_url_format = 'git@github.com:%s' }
})

return require('packer').startup(function(use)

    -- packer itself
    use 'wbthomason/packer.nvim'

    -- grammer highlight
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- coc.nvim plugin family
    use { 'neoclide/coc.nvim' }

    -- file navigator
    use { 
        'nvim-tree/nvim-tree.lua',
	requires = {
	    'nvim-tree/nvim-web-devicons',
	},
	tag = 'nightly'
    }

    -- lualine and tabline
    use { 'kdheepak/tabline.nvim' }
    use { 'nvim-lualine/lualine.nvim' }

    -- leap quick move
    use { 'ggandor/leap.nvim' }
    use { 'ggandor/flit.nvim' }

    -- inlay terminal
    use { 'skywind3000/vim-terminal-help' }

    -- theme
    use { 'Shatur/neovim-ayu'}
    use { 'folke/tokyonight.nvim' }

    -- surrounding
    use {'machakann/vim-sandwich'}

    -- indent line
    use {'Yggdroot/indentLine'}

    -- better comments
    use {'Djancyp/better-comments.nvim'}

end)
