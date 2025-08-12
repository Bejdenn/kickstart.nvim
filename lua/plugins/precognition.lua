return {
  'tris203/precognition.nvim',
  config = function()
    require('which-key').setup {
      { '<leader>p', group = '[P]recognition' },
    }

    vim.keymap.set('n', '<leader>pt', require('precognition').toggle, { desc = '[T]oggle hints' })
  end,
}
