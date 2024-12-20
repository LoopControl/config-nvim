
return {
  {
    "folke/which-key.nvim",
    opts = {
      -- put which key back at bottom of screen instead of floaty broken layout
      preset = "classic",
    }
  },
  {
    "folke/snacks.nvim",
    opts = {
      -- disable indent lines
      indent = {
        enabled = false,
        -- only_scope = true,
        -- only_current = true,
      },
      dashboard = {
        enabled = true,
        sections = {
          { section = "header" },
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "startup" },
        },
        preset = {
          -- Used by the `header` section
          header = [[
░▀▀█░█▀▀░█▀▀░█░█░▀█▀░█▄█
░░░█░█▀▀░█▀▀░▀▄▀░░█░░█░█
░▀▀░░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀]]
        },
      },
    },
    keys = {
    },
  },
}
