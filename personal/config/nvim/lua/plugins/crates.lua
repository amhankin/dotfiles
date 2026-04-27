return {
  'saecki/crates.nvim',
  tag = 'stable',
  event = { 'BufRead Cargo.toml' }, -- Only load when needed
  config = function()
    require('crates').setup {
      lsp = {
        enabled = true,
        on_attach = function(client, bufnr)
          -- Optional: specific keymaps for crates
        end,
        actions = true,
        completion = true,
        hover = true,
      },
    }
  end,
}
