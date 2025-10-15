-- set 24-bit color cuz why not
vim.opt.termguicolors = true

-- And then run vimscript for keybindings and whatnot
vim.cmd[[ source ~/.config/nvim/settings.vim ]]

-- I'm moving this here so the rest of the init setup works at least 
require'lazysetup'

-- disable netrw
-- (For nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd.colorscheme('tokyonight')

require'lualine'.setup {
    options={
        theme='tokyonight'
    }
}

-- lsp setup because it's special and needs it
require'lspconfig'.clangd.setup{require'lspsetup'}

require'cmpsetup'

-- nvim-tree jump to line
-- vim.api.nvim_set_keymap('n', '<leader>f', ':lua require("nvim-tree").jump_to_line()<CR>', { noremap = true, silent = true })
