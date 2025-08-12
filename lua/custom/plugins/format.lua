return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true, python = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 500,
          lsp_format = 'fallback',
        }
      end
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      tex = { 'latexindent' },
      sh = { 'shfmt' },
      css = { 'prettierd', 'prettier', stop_after_first = true },
      jsonc = { 'prettierd', 'prettier', stop_after_first = true },
      sql = { 'sqruff' },
      python = {
        'ruff_format',
        -- To organize the imports.
        'ruff_organize_imports',
      },
      markdown = { 'deno_fmt' },
      --
      -- You can use 'stop_after_first' to run the first available formatter from the list
      -- javascript = { "prettierd", "prettier", stop_after_first = true },
    },
    formatters = {
      latexindent = {
        append_args = {
          '--yaml',
          "indentRules:chapter:'\t';section:'\t';subsection:'\t'"
            .. 'indentAfterHeadings:chapter:indentAfterThisHeading:1;'
            .. 'level:1,'
            .. 'indentAfterHeadings:section:indentAfterThisHeading:1;'
            .. 'level:2,'
            .. 'indentAfterHeadings:subsection:indentAfterThisHeading:1;'
            .. 'level:3',
        },
      },
    },
  },
}
