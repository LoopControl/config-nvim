return {
  -- add theme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Configure LazyVim to load theme opts
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      flavour = "macchiato",
      background = {
        dark = "macchiato",
      },
      no_italic = true,
    },
  },
}
