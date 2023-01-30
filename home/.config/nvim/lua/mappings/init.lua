--fns to pass args to create key mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local opts2 = { silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

----- META_FILE_EDITS ---------------------------------------------------------
map('n', '<localleader>r', ':luafile %<CR>', { noremap = true })
map('n', '<localleader>sv', ':source $MYVIMRC<CR>', { noremap = true })
map('n', '<localleader>s', ':echo "Use \\<localleader\\>s[s|v]"<CR>', opts )
map('c', 'w<CR>', ':StripWhitespaceOnChangedLines<CR>:w<CR>', opts)
map('c', 'W<CR>', ':w<CR>', opts)

------ PLUGIN_CALLS -----------------------------------------------------------
-- map( MODE([nci], KEYS, CMD, OPTIONS )    --SYNTAX
map('n', '<leader>e', 'e:NvimTreeToggle<CR>', opts)
map('n', '<localleader>ss', ':PackerSync<CR>', opts)

--- Comment ................................................................>>>
map('n', '//', 'gcc', opts2 )
map('v', '//', 'gc',  opts2 )
--- END Comment ............................................................<<<

--- BARBAR .................................................................>>>
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)                --> 'A' = Alt
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
-- END barbar ..............................................................<<<

--- Telescope ..............................................................>>>
map('n', '<leader>ff', ':Telescope find_files<CR>',   opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>',    opts)
map('n', '<leader>gb', ':Telescope git_branches<CR>', opts)
map('n', '<leader>gc', ':Telescope git_commits<CR>',  opts)
map('n', '<leader>gf', ':Telescope git_files<CR>',    opts)
map('n', '<leader>gs', ':Telescope git_status<CR>',   opts)
map('n', '<leader>r',  ':Telescope registers<CR>',    opts)
-- END Telescope ...........................................................<<<
--
--- Table-Mode ..............................................................>>>
map('n', '<leader>t', ':TableModeToggle<CR>', opts)
-- END Table-Mode ...........................................................<<<
--
---- NAVIGATION --------------------------------------------------------------
map('n', '<C-l>', ':bn<CR>', opts)  -- Next buffer
map('n', '<C-h>', ':bp<CR>', opts)  -- Previous buffer
map('i', '<C-l>', '<ESC>la', opts)  -- Next char
map('i', '<C-h>', '<ESC>i',  opts)  -- Previous char

----- FILE_EDITS --------------------------------------------------------------
--map('c', 'delduprows', '%s/^\(.*\)\(\n\1\)\+$/\1/', opts) -- Del duplicate rows
map('i', '<C-d>', '<Del>', opts)       -- Del char on cursor
map('i', '<localleader>t', '<C-R>=strftime("%F")<CR>', opts) -- Insert today's date
map('n', '<C-Space>', 'i <ESC>', opts) -- Insert space char
map('n', '<C-j>', 'o<ESC>k',     opts) -- Insert newline below cursor
map('n', '<C-o>', 'O<ESC>j',     opts) -- Insert newline above cursor
map('n', '<leader>t', 'i<C-R>=strftime("%F")<CR><Esc>', opts) -- Insert today's date

----- SEARCHES ----------------------------------------------------------------
map('n', '<localleader> ', ':nohl<CR>', opts)  -- Remove search highlighting



