return {
  'folke/snacks.nvim',
  priority = 1000,
  ---@type snacks.Config
  opts = {
    lazygit = {
      configure = false,
    },
  },
  config = function()
    local snacks = require 'snacks'
    local wk = require 'which-key'
    wk.add { { '<leader>l', snacks.lazygit.open, desc = 'Open [L]azyGit' } }
    snacks.setup()
  end,
}
