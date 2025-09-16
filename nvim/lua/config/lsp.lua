-- lsp

-- enable individual LSP(s)
vim.lsp.enable('lua_ls')

-- diagnostics
vim.diagnostic.config({
  virtual_lines = {
    current_line = true,
  },
})
