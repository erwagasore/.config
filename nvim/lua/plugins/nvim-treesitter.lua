vim.pack.add({
  {
    src="https://github.com/nvim-treesitter/nvim-treesitter",
    branch="master",
    lazy=false, build=":TSUpdate"
  }
})

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    'lua'
  },
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  }
})
