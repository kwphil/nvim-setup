return {
    -- Files & Icons
    { 'nvim-tree/nvim-tree.lua', opts = {} },
    { 'nvim-tree/nvim-web-devicons', opts = {} },

    -- Commandline & Popup UI
    { 'MunifTanjim/nui.nvim' },
    { 'folke/noice.nvim', event = 'VeryLazy', opts = {} },

    -- UI & Theming
    { 'folke/tokyonight.nvim', opts = {} },
    { 'nvim-lualine/lualine.nvim' },
    { 'nvimdev/dashboard-nvim', event = 'VimEnter', opts=require'dashboard-setup' },
    { 'folke/which-key.nvim', event = 'VeryLazy', opts={} },

    -- LSP, Completion & Tools
    { 'williamboman/mason.nvim', opts = {} },
    { 'neovim/nvim-lspconfig' },
    { 'nvim-treesitter/nvim-treesitter', opts = require('tree-sitter') },
    { 'mrcjkb/rustaceanvim', lazy = false },
    { 'simrat39/rust-tools.nvim' },

    -- Completion Engine & Sources
    { 'nvim-lua/completion-nvim' },
    { 'L3MON4D3/LuaSnip', build = 'make install_jsegexp', opts = {} },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },

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

