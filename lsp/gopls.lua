return {
  settings = {
    gopls = {
      semanticTokens = true,
      staticcheck = true,
      hints = {
        ignoredError = true,
        compositeLiteralFields = true,
        parameterNames = true,
      },
    },
  },
}
