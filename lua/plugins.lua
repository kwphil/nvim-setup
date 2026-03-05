return {
    -- Files & Icons
    { 'nvim-tree/nvim-tree.lua', opts = {} },
    { 'antosha417/nvim-lsp-file-operations' },
    { 'nvim-tree/nvim-web-devicons', opts = {} },
    { 'onsails/lspkind.nvim', opts = {} },

    -- Commandline & Popup UI
    { 'MunifTanjim/nui.nvim' },
    { 'folke/noice.nvim', event = 'VeryLazy', opts = {} },
    { 'stevearc/dressing.nvim', opts = {} },

    -- UI & Theming
    {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
	    vim.cmd.colorscheme 'catppuccin-mocha'
        end,
    },
    { 'nvim-lualine/lualine.nvim' },
    { 'nvimdev/dashboard-nvim', event = 'VimEnter', opts=require'dashboard-setup' },
    { 'folke/which-key.nvim', event = 'VeryLazy', opts={} },

    -- LSP, Completion & Tools
    -- the lsp's module itself is deprecated in favor of vim.lsp
    { 'williamboman/mason.nvim', opts = {} },
    { 'nvim-treesitter/nvim-treesitter', opts = require('tree-sitter') },
    { 'mrcjkb/rustaceanvim', lazy = false },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'windwp/nvim-autopairs', opts = {} },
    { 'nvim-telescope/telescope.nvim',
    	dependencies = { 'nvim-lua/plenary.nvim' },
    },
    { 'kosayoda/nvim-lightbulb', opts = {} },
    { 'folke/trouble.nvim', opts = {} },
    { 'MeanderingProgrammer/markdown.nvim', opts = {} },

    -- Completion Engine & Sources
    { 'L3MON4D3/LuaSnip', build = 'make install_jsegexp', opts = {} },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },

    -- Etc.
    { 'nvim-treesitter/nvim-treesitter-context', opts = {} },
    { 'simrat39/symbols-outline.nvim', opts = {} },
    { 'numToStr/Comment.nvim', opts = {} },

    -- Git Integration
    { 'tpope/vim-fugitive' },
    { 'lewis6991/gitsigns.nvim', opts = require('gitsetup') },
    { 'nvim-lua/plenary.nvim' },
    {
        'kdheepak/lazygit.nvim',
        cmd = { 'LazyGit' },
        keys = { { 'gg', '<cmd>LazyGit<CR>', desc = 'Open LazyGit' } },
    },
}

