return {
  settings = {
    bashIde = {
      -- apparently shellcheck's analysis has big resource
      -- problems with the nvm script that is sourced in .profile.:
      -- https://github.com/koalaman/shellcheck/issues/3177#issuecomment-2767641325
      shellcheckArguments = { '--extended-analysis=false' },
    },
  },
}
