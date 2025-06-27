-- disable netrw at start
-- (For nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('config.lazy')

-- set 24-bit color cuz why not
vim.opt.termguicolors = true

-- And then run vimscript for keybindings and whatnot
vim.cmd[[ source ~/.config/nvim/vim/keybinds.vim ]]
