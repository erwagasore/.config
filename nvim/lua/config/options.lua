-- options

-- disable linenumber
vim.opt.number = false

-- enable signcolumn
vim.opt.signcolumn = 'yes'

-- all window have rounded border
vim.opt.winborder = 'rounded'

-- show whitespace characters
vim.opt.list = true
vim.opt.listchars = {
  space = '·', tab = '▸ ',
  trail = '~',
  nbsp = '␣',
  eol = '¬',
  extends = "»",
  precedes = "«",
}
