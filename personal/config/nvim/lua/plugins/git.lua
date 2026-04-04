return {
  -- Adds git related signs to the gutter, as well as utilities for managing changes
  --{
  --  'lewis6991/gitsigns.nvim',
  --  opts = {
  --    signs = {
  --      add = { text = '+' },
  --      change = { text = '~' },
  --      delete = { text = '_' },
  --      topdelete = { text = '‾' },
  --      changedelete = { text = '~' },
  --    },
  --  },
  --},
  {
    "NeogitOrg/neogit",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim", -- required

      -- Only one of these is needed.
      --"sindrets/diffview.nvim",   -- optional
      "esmuellert/codediff.nvim", -- optional

      -- For a custom log pager
      "m00qek/baleia.nvim", -- optional

      ---- Only one of these is needed.
      --"nvim-telescope/telescope.nvim", -- optional
      --"ibhagwan/fzf-lua",            -- optional
      --"nvim-mini/mini.pick",         -- optional
      --"folke/snacks.nvim",           -- optional
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
    },
  },
  {
    "esmuellert/codediff.nvim", -- optional
    opts = {
      explorer = {
        view_mode = "tree",
        flatten_dirs = "true",
      }
    },
  }

}
