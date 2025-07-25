return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    lazygit = {
      configure = false,
    },
    image = { enabled = true },
  },
  keys = {
    {
      '<leader>gg',
      function()
        require('snacks').lazygit()
      end,
      desc = 'Lazygit',
    },
  },
}
