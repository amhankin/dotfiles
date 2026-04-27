local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set('n', '<leader>rr', function()
  vim.cmd 'split | :term cargo run'
  -- vim.cmd 'startinsert'  -- uncomment to hit anykey to close window
end, { desc = 'runs current project' })

-- 2. Enable Inlay Hints (Neovim 0.10+)
if vim.lsp.inlay_hint then
  vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
end
