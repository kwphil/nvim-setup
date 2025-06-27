-- set 24-bit color cuz why not
vim.opt.termguicolors = true

-- And then run vimscript for keybindings and whatnot
vim.cmd[[ source ~/.config/nvim/vim/keybinds.vim ]]

-- I'm moving this here so the rest of the init setup works at least 
require'lazysetup'

-- disable netrw at start
-- (For nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
