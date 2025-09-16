vim.pack.add({
  {"https://github.com/uloco/bluloco.nvim.git"},
  {"https://github.com/rktjmp/lush.nvim.git"}
})

require("bluloco").setup({
  style = "auto"
})
require("lush").setup()

vim.cmd('colorscheme bluloco')
