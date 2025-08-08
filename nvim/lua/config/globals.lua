-- globals

-- define <space> as leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- customize statusline
vim.o.laststatus = 3

-- Neovide specific settings
if vim.g.neovide then
  vim.g.neovide_theme = 'auto'
  vim.g.neovide_remember_window_size = true
  vim.o.guifont = "Pragmasevka Nerd Font:h15"
end

-- declare that I have nerd font
vim.g.have_nerd_font = true

-- Disable providers you don't use
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
