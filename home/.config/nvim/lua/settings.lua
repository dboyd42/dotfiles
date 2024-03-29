-- GENERAL SETTINGS -----------------------------------------------------------
-- vim.opt => API for vim options ---
-- -- :help option-list => show all available options
local set = vim.opt -- Vim Options
local setw = vim.wo  -- Window Options
-- local setg = vim.g -- Global Options

--- APPEARANCE ---
set.colorcolumn    = '80'
set.cursorline     = true
set.number         = true -- display ascending line numbers
set.numberwidth    = 4    -- nCols to use for the line number
-- set.guicursor      = ""   -- fat cursor **works w/ dracula.lua
set.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20'

--- BACKEND ---
--set.nostartofline = true -- Off: cursor is kept in the same column #ERR
--set.notimeout     = true -- timeouts on keycodes #ERR
set.clipboard = {'unnamed', 'unnamedplus'}  -- '*' (vim cb), '+' (system cb)
set.ttimeout      = true --   *doesn't affect mappings
set.ttimeoutlen   = 200  --   self-explantory
set.mouse         = '' --a'    -- Mouse ctrl
--set.wildmode = 'longest', 'list', 'full' -- Visual autocomplete for cmd-menu

--- FILE MGMT ---
set.autoread     = true -- " watch for file changes
set.confirm      = true  -- " Use a dialog when an operation has to be confirmed
set.fileencoding = 'utf-8' --, 'cp936', 'gb18030', 'big5'}  -- Add Chinese support
set.hidden       = true -- " Re-use the same win & switch from unsaved buffers
set.hidden       = true -- puts unsaved file->'hidden' buffer !req :w
set.nf = {'alpha', 'bin', 'octal', 'hex'}  -- format special chars
--set.isfname      +=32   -- " Supports filenames with spaces when using gf
--set.isfname:append("@-@")
--set.printoptions=number:y -- " Enables printing with line numbers *Use w 'ha'

--- TAB-OUT ---
set.autoindent  = true  -- Copies curr->indent on newline
--set.backspace   = 'indent', 'eol', 'start'  -- allow BS over ai, newline, <TAB>
set.expandtab   = true  -- tabs are spaces
set.shiftround  = true  -- indents round to nearest shiftwidth
set.shiftwidth  = 4     -- applies to '<<' and '>>' indentions
set.smartindent = true  -- indents are based off FileType
set.smarttab    = true  --
set.softtabstop = 4     -- nSpaces in <TAB>
set.tabstop     = 4     -- nVisual_Spaces in <TAB>

--- TEXT-MGMT ---
set.breakindent = false -- Enable break indent (default=false)
set.linebreak = true    -- Make it not wrap in the middle of a word
set.spelllang = 'en_us'
set.spellsuggest = '5'  -- Limit spellsuggest list to 5 words
set.tw    = 79          -- textwidth
set.undofile = true     -- Save undo history
set.wrap  = true        -- Wrapping enabled

--- SEARCHING ---
set.hlsearch   = true   -- highlight searched matches
set.ignorecase = true   -- insensitive case queries
set.incsearch  = true   -- display matches while typing
set.smartcase  = true	  -- capitalized sensitive case queries

--- SECURITY ---
--set.nomodeline    = true -- disabled due to security vulns #ERR

--- WINDOW MGMT ---
set.scrolloff     = 2	   --start scrolling at nLines before end-of-screen
set.splitbelow    = true
set.splitright    = true
set.termguicolors = true
--set.updatetime = 250 -- Decrease update time
set.updatetime    = 50  -- fast update time
setw.signcolumn   = 'yes' -- Decrease update time

--- UNKNOWN ---
-- set.completeopt = 'menuone,noselect'

-- Highlight blink on yank.
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
  ]],
  false
)
