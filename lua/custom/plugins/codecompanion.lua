return {
  {
    'olimorris/codecompanion.nvim',
    opts = {},
    dependencies = {
      {
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter',
      },
      {
        'github/copilot.vim',
        config = function()
          vim.g.copilot_filetypes = {
            ['*'] = false,
          }
        end,
      },
      {
        'MeanderingProgrammer/render-markdown.nvim',
        ft = { 'markdown', 'codecompanion' },
      },
      {
        'echasnovski/mini.diff',
        config = function()
          local diff = require 'mini.diff'
          diff.setup {
            -- Disabled by default
            source = diff.gen_source.none(),
          }
        end,
      },
    },
    config = function()
      local codecompanion = require 'codecompanion'
      codecompanion.setup {
        adapters = {
          ollama = function()
            return require('codecompanion.adapters').extend('ollama', {
              env = {
                url = 'https://ollama.internal.elinis.de',
              },
              headers = {
                ['Content-Type'] = 'application/json',
              },
              num_ctx = {
                default = 20000,
              },
              parameters = {
                sync = true,
              },
            })
          end,
        },
      }
    end,
  },
}
