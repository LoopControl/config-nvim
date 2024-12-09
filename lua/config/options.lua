-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false

-- softwrap
vim.opt.wrap = true

-- no spellcheck
vim.opt_local.spell = false

-- disable autoformat on save
vim.g.autoformat = false

-- disable all diagnostics (can manually enable per file with <leader>ud)
-- vim.diagnostic.enable(false)

-- auto-session recommended
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
