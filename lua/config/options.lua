-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- tmux related fixes?
-- vim.opt.termguicolors = true
-- vim.opt.encoding = "utf-8"

vim.opt.relativenumber = false

-- softwrap
vim.opt.wrap = true

-- no spellcheck
vim.opt_local.spell = false

-- disable autoformat on save
vim.g.autoformat = false

-- disable all diagnostics (can manually enable per file with <leader>ud)
-- vim.diagnostic.enable(false)

-- disable snacks.nvim animations
vim.g.snacks_animate = false

-- blinking cursor
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- auto-session recommended
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
