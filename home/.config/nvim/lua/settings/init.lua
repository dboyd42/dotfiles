----- Basic Options -----------------------------------------------------------
-- vim.opt: a lua table to allow setting/getting neovim options
-- :help option-list  --show a list of one-liner explanations for ea option
local set = vim.opt

vim.notify = require("notify")

--- TAB-OUT ---
set.expandtab   = true
set.shiftwidth  = 4
set.smarttab    = true
set.softtabstop = 4
set.tabstop     = 4

--- SEARCHING ---
set.hlsearch   = true
set.ignorecase = true   --insensitive case queries
set.incsearch  = true   --display matches while typing
set.smartcase  = true	--capitalized sensitive case queries

--- FILE MGMT ---
set.fileencoding = 'utf-8'
set.hidden       = true     --puts unsaved file->'hidden' buffer wo req :w

--- WINDOW MGMT ---
set.scrolloff     = 5	   --start scrolling at nLines before end-of-screen
set.splitbelow    = true
set.splitright    = true
set.termguicolors = true
set.wrap          = false

--- APPEARANCE ---
set.cursorline     = true
set.number         = true
set.colorcolumn    = '80'

--- UNKNOWN ---
set.completeopt = 'menuone,noselect'
