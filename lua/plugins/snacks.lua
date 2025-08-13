return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@module "snacks"
  ---@type snacks.Config
  opts = {
    lazygit = {
      configure = false,
    },
    image = { enabled = true },
    dashboard = {},
  },
  keys = {
    {
      '<leader>lg',
      function()
        require('snacks').lazygit()
      end,
      desc = 'Lazygit',
    },
  },
}
