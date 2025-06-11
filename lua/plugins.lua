return {
	{ 'williamboman/mason.nvim', opts={} },
	{ 'nvim-tree/nvim-tree.lua', opts={} },
	{ 'mrcjkb/rustaceanvim', lazy = false },
	{ require('cmpsetup') },
	{ 'L3MON4D3/LuaSnip', build = 'make install_jsegexp', opts={} },
	{ 'williamboman/mason-lspconfig.nvim', opts={ ensure_installed = { 'clangd' } } },
	{ 'nvim-treesitter/nvim-treesitter', opts=require('tree-sitter') },
	{ 
		'neovim/nvim-lspconfig',
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
		},
		config=require('lspsetup'),
	}
}
