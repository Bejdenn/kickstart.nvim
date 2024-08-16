return {
  'tris203/precognition.nvim',
  config = function()
    require('which-key').register {
      ['<leader>p'] = { name = '[P]recognition', _ = 'which_key_ignore' },
    }

    vim.keymap.set('n', '<leader>pt', require('precognition').toggle, { desc = '[T]oggle hints' })
  end,
}
