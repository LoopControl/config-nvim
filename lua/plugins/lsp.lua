return {
  "nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      -- phpactor works but is annoying and spammy
      -- it does have a ton of options to configure what it does so
      -- maybe reenable when have the time
      phpactor = {
        enabled = false,
      },
      marksman = {
        enabled = false,
      },
      lua_ls = {
        enabled = false,
      },
    },
    autoformat = false,
    diagnostics = {
      virtual_text = false,
      signs = false,
    },
  },
}
