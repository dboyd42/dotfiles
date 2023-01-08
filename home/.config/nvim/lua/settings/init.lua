----- Basic Options -----------------------------------------------------------
-- vim.opt: a lua table to allow setting/getting neovim options
-- :help option-list  --show a list of one-liner explanations for ea option
local set = vim.opt

vim.notify = require("notify")

--- APPEARANCE ---
set.colorcolumn    = '80'
set.cursorline     = true
set.number         = true -- display ascending line numbers
set.numberwidth    = 4    -- nCols to use for the line number

--- BACKEND ---
--set.nostartofline = true -- Off: cursor is kept in the same column #ERR
--set.notimeout     = true -- timeouts on keycodes #ERR
set.ttimeout      = true --   *doesn't affect mappings
set.ttimeoutlen   = 200  --   self-explantory
set.mouse         = a    -- Mouse ctrl
--set.wildmode = 'longest', 'list', 'full' -- Visual autocomplete for cmd-menu

--- FILE MGMT ---
set.fileencoding = 'utf-8'
set.hidden       = true --puts unsaved file->'hidden' buffer wo req :w
set.nf = 'alpha', 'bin', 'octal', 'hex'  -- format special chars
set.autoread     = true -- " watch for file changes
set.confirm      = true  -- " Use a dialog when an operation has to be confirmed
set.hidden       = true -- " Re-use the same win & switch from unsaved buffers
--set.isfname      +=32   -- " Supports filenames with spaces when using gf
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
set.tw    = 79    -- textwidth
set.wrap  = true  -- Wrapping enabled

--- SEARCHING ---
set.hlsearch   = true   -- highlight searched matches
set.ignorecase = true   -- insensitive case queries
set.incsearch  = true   -- display matches while typing
set.smartcase  = true	-- capitalized sensitive case queries

--- SECURITY ---
--set.nomodeline    = true -- disabled due to security vulns #ERR

--- WINDOW MGMT ---
set.scrolloff     = 5	   --start scrolling at nLines before end-of-screen
set.splitbelow    = true
set.splitright    = true
set.termguicolors = true

--- UNKNOWN ---
set.completeopt = 'menuone,noselect'

