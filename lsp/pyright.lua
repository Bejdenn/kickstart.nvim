return {
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
      settings = {
        python = {
          extraPaths = os.getenv 'WEBOTS_HOME_PATH' ~= nil and { os.getenv 'WEBOTS_HOME_PATH' .. '/lib/controller/python' } or {},
        },
      },
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },
}
