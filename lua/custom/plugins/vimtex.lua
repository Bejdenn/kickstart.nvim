local pdf_readers = {
  ['Darwin'] = 'skim',
  ['Linux'] = 'zathura',
}

return {
  'lervag/vimtex',
  lazy = false,
  config = function()
    vim.g.vimtex_view_method = pdf_readers[vim.loop.os_uname().sysname]
  end,
}
