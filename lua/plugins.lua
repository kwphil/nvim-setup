return {
	{ 'williamboman/mason.nvim', opts={} },
	{ 'nvim-tree/nvim-tree.lua', opts={} },
	{ 'mrcjkb/rustaceanvim', lazy = false },
	{ 'nvim-lua/completion-nvim' },
    { 'simrat39/rust-tools.nvim' },
	{ 'L3MON4D3/LuaSnip', build = 'make install_jsegexp', opts={} },
	{ 'nvim-treesitter/nvim-treesitter', opts=require('tree-sitter') },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'hrsh7th/nvim-cmp' },
    
    -- Git specific
    { 'tpope/vim-fugitive' },
    { 'lewis6991/gitsigns.nvim', opts=require'gitsetup' },
    { 'nvim-lua/plenary.nvim' },
    { 'kdheepak/lazygit.nvim',
        cmd={ 'LazyGit' }, 
        keys={ { 'gg', '<cmd>LazyGit<CR>', desc='Open LazyGit' } },
    },
}
