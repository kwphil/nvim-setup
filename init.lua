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

require'lualine'.setup { }

-- lsp setup because it's special and needs it
vim.lsp.enable('clangd')
vim.lsp.config.clangd = require'lspclangd'
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('gdscript')
vim.lsp.config.gdscript = require'lspgdscript'

require'cmpsetup'
