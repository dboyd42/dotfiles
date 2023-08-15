-- Set barbar's options
require('bufferline').setup {
    -- Enable/disable animations
    animation = true,

    -- Enable/disable current/total tabpages indicator (top right corner)
    closable = true,

    -- Configure icons on the bufferline.
    -- icon_separator_active = '',          -- DEPRECATED 4/8/23
    -- icon_separator_inactive = '',        -- DEPRECATED 4/8/23
    -- Enable/Disable icons
    -- if set to 'numbers', will show buffer index in the tabline
    -- if set to 'both', will show buffer index and icons in the tabline

    -- Enable/disable current/total tabpages indicator (top right corner)
    tabpages = true,

    -- Hide file extensions (refer to statusline for file extension labels)
    hide = {extensions = true},

    -- Enables/disable clickable tabs
    --  - left-click: go to buffer
    --  - middle-click: delete buffer
    clickable = true,

    -- If true, add an additional separator at the end of the buffer list
    separator_at_end = true,
}

--- Barbar Keybindings ........................................................
--[[

| Key | Description |
|-----+-------------|
| 'A' | Alt         |

-- ]]

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts) -- Similar mapping:
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)     -- 'n', C-h/l
map('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts) -- Similar mapping:
map('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)     -- 'n', C-h/l
-- Re-order to previous/next #reorder tabs
-- map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts) -- conflicts w/ macOS
-- map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)    -- Amethyst tiling mgr
map('n', '<A-j>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A-k>', '<Cmd>BufferMoveNext<CR>', opts)
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
map('n', '<leader>bc', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts)
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-Picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
