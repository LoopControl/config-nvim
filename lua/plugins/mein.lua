return {
  {
    "folke/which-key.nvim",
    opts = {
      -- put which key back at bottom of screen instead of floaty broken layout
      preset = "classic",
    },
  },
  -- trim trailing whitespace
  {
    "cappyzawa/trim.nvim",
    opts = {
      trim_on_write = false,

      -- if you want to ignore markdown file.
      -- you can specify filetypes.
      ft_blocklist = { "markdown" },

      highlight = false,
    },
    keys = {
      { "<leader>iw", "<cmd>Trim<CR>", desc = "Trim Whitespace" },
    },
  },
  -- formatter (built in)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      -- disable inlay hints by default
      inlay_hints = { enabled = false },
    },
  },
  -- session manager
  -- {
  --   'rmagatti/auto-session',
  --   opts = {
  --     suppressed_dirs = { '~/downloads' },
  --   },
  -- },
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
░▀▀░░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀]],
        },
      },
    },
    keys = {},
  },
  -- smear cursor (animated cursor)
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      -- Smear cursor when moving within line or to neighbor lines.
      smear_between_neighbor_lines = false,

      -- Draw the smear in buffer space instead of screen space when scrolling
      scroll_buffer_space = true,

      -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
      -- Smears will blend better on all backgrounds.
      legacy_computing_symbols_support = true,
    },
  },
}
