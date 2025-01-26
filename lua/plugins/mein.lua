return {
  -- {
  --   "yetone/avante.nvim",
  --   event = "VeryLazy",
  --   lazy = true,
  --   build = "make",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --   },
  --   opts = {
  --     provider = "ollama",
  --     vendors = {
  --       ollama = {
  --         __inherited_from = "openai",
  --         api_key_name = "",
  --         endpoint = "http://127.0.0.1:11434/v1",
  --         -- model = "qwen2.5-coder:7b",
  --         model = "qwen2.5-coder:7b-instruct-q5_K_M"
  --       },
  --     },
  --   },
  -- },
  {
    "mein-chat",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    name = "mein-chat",
    dir = "~/Dev/vim/mein-chat.nvim",
    dev = true,
    opts = {
      model = "mannix/llama3.1-8b-abliterated",
      -- model = "qwen2.5-coder:7b"
      -- model = "qwen2.5-coder:7b-instruct-q5_K_M"
    },
    keys = {
      { "<leader>ia", "<cmd>MeinChat<CR>", desc = "Mein Chat" },
      { "<leader>ir", "<cmd>Lazy reload mein-chat<CR>", desc = "Reload mein-chat" },
    },
  },
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
}
