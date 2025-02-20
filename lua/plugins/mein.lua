return {
  {
    "mein-chat",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    name = "mein-chat",
    dir = "~/Dev/vim/mein-chat.nvim",
    dev = true,
    opts = {
      -- url = "http://localhost:5000/v1",
      -- api_key = "sk-1234",
      -- model = "mannix/llama3.1-8b-abliterated",
      model = "mein-qwen2.5-32b-agi",
      -- model = "qwen2.5-coder:7b"
      -- model = "qwen2.5-coder:7b-instruct-q5_K_M"
    },
    keys = {
      { "<leader>ia", "<cmd>MeinChat<CR>", mode = { "n", "v" }, desc = "MeinChat - Send" },
      { "<leader>is", "<cmd>MeinChatToggle<CR>", mode = { "n", "v" }, desc = "MeinChat - Toggle" },
      { "<leader>if", "<cmd>MeinChatStop<CR>", mode = { "n", "v" }, desc = "MeinChat - Stop Gen" },
      { "<leader>ir", "<cmd>Lazy reload mein-chat<CR>", desc = "Reload mein-chat" },
    },
  },
  {
    "Xuyuanp/scrollbar.nvim",
    -- no setup required
    init = function()
      local group_id = vim.api.nvim_create_augroup("scrollbar_init", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter", "WinScrolled", "WinResized" }, {
        group = group_id,
        desc = "Show or refresh scrollbar",
        pattern = { "*" },
        callback = function()
          require("scrollbar").show()
        end,
      })
    end,
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
      image= {
        enabled = true,
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
