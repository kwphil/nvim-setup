return {
	{ 'williamboman/mason.nvim', opts={} },
	{ 'nvim-tree/nvim-tree.lua', opts={} },
	{ 'mrcjkb/rustaceanvim', lazy = false },
	{ 'nvim-lua/completion-nvim' },
	{ 'L3MON4D3/LuaSnip', build = 'make install_jsegexp', opts={} },
	{ 'nvim-treesitter/nvim-treesitter', opts=require('tree-sitter') },
}
