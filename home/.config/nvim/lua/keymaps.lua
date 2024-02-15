--fns to pass args to create key mappings
--local map = vim.api.nvim_set_keymap -- deprecated
local map = vim.keymap.set -- Nvim API func (Lua exclusive)
local opts = { noremap = true, silent = true }
-- local opts2 = { silent = true } --Unused local `opts2`

--[[ Moved to lua/lazy.lua
vim.g.mapleader = ' '	-- Space
vimg.g.maplocalleader = '\\' -- backslash
]]

--[[ META_FILE_EDITS --------------------------------------------------------]]
map('c', 'W<CR>', '<Cmd>w<CR>', opts)
-- map('c', 'w<CR>', '<Cmd>StripWhitespaceOnChangedLines<CR>:w<CR>', opts)
-- Reload Lua file (Checks for syntax errors)
map('n', '<localleader>rl', '<Cmd>luafile %<CR>', { noremap = true })
map('n', '<localleader>s', '<Cmd>echo "Use \\<localleader\\>s[s|v]"<CR>', opts )
map('n', '<localleader>sv', '<Cmd>source $MYVIMRC<CR>', { noremap = true })
map('n', '<localleader>w', '<Cmd>set wrap!<CR>', opts)
-- Toggle spell
map('n', '<F7>', '<Cmd>setlocal spell!<CR>')
map('n', '<leader>7', '<Cmd>setlocal spell!<CR>')

--[[ PLUGIN_CALLS -----------------------------------------------------------]]
-- map( MODE([nci], KEYS, CMD, OPTIONS )    --SYNTAX
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map('n', '<localleader>ss', '<Cmd>w<CR>:so<CR>:PackerSync<CR>', opts)

--[[ Table-Mode -------------------------------------------------------------]]
map('n', '<leader>tm', '<Cmd>TableModeToggle<CR>', opts)

--[[ NAVIGATION -------------------------------------------------------------]]
-- Normal mode
map('n', '<C-l>', '<Cmd>bn<CR>', opts)  -- Next buffer
map('n', '<C-h>', '<Cmd>bp<CR>', opts)  -- Previous buffer
-- Insert mode
map('i', '<C-l>', '<ESC>la', opts)  -- Next char
map('i', '<C-h>', '<ESC>i',  opts)  -- Previous char

--[[ FILE EDITS -------------------------------------------------------------]]
--map('c', 'delduprows', '%s/^\(.*\)\(\n\1\)\+$/\1/', opts) -- Del duplicate rows
map('i', '<C-d>', '<Del>',       opts) -- Del char on cursor
map('i', '<C-f>', '<C-x><C-n>',  opts) -- Autocomplete from prev->words
map('i', '<localleader>ts', '<C-R>=strftime("%F")<CR>', opts)  -- Insert today's date
-- map('i', '<localleader>tw', '<C-o>:lua ToggleTextwidth()<CR>') -- Textwidth Toggle (0,79)
map('i', '<localleader>tw', '<Cmd>lua ToggleTextwidth()<CR>') -- Textwidth Toggle (0,79)
map('n', '<C-Space>', 'i <ESC>', opts) -- Insert space char --TMUX <prefix>
map('n', '<C-j>', 'o<ESC>k',     opts) -- Insert newline below cursor
map('n', '<C-o>', 'O<ESC>j',     opts) -- Insert newline above cursor
map('n', '<leader>tc', '<Cmd>.s/\\(\\w\\+\\)/\\u\\L\\1/g<CR><Cmd>nohl<CR>', opts) -- Title Case
map('n', '<localleader>ts', 'i<C-R>=strftime("%F")<CR><Esc>',  opts) -- Insert today's date
map('n', '<localleader>tw', ':lua ToggleTextwidth()<CR>', opts)      -- Textwidth Toggle (0,79)
map('v', '<leader>tc', '<Cmd>s/\\%V\\(\\w\\+\\)/\\u\\L\\1/g<CR>Esc<Cmd>nohl<CR>', opts) -- Title Case

-- Refactor curr->word in curr->file
map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--[[ SEARCHES ---------------------------------------------------------------]]
-- map('n', '<localleader> ', '<Cmd>nohl<CR>', opts)  -- moved to plugins/notify.lua

--[[ Bonus Bindings - Woot! Woot! -------------------------------------------]]
-- Move visual sel up/down and within wrapping lines
map('v', 'J', '<Cmd>m \'>+1<CR>gv=gv')
map('v', 'K', '<Cmd>m \'<-2<CR>gv=gv')

map('n', 'Y', 'yg$') -- Yank to EOL
map('n', 'J', 'mzJ`z') --Append line & ret cursor to prev->position
map('n', '<C-d>', '<C-d>zz') -- PageDown && center cursor/screen
map('n', '<C-u>', '<C-u>zz') -- PageUp && center cursor/screen

map('i', '<C-c>', '<Esc>') -- Assists with plugins that don't map C-[ to Esc
map('i', '<C-[>', '<Esc>') -- Assists with plugins that don't map C-[ to Esc



--[[ Interactive Sessions ---------------------------------------------------]]
-- Make curr->file executable
map("n", "<leader>x", "<Cmd>!chmod +x %<CR>", { silent = true })

-- Run Prgm in split terminal then quit (doesn't close buffer)
-- map('n', '<leader>rp', ':sp<CR> :term python3 %<CR> :startinsert<CR>')

-- Run Prgm in split terminal then quit (auto-close buffer)
map('n', '<leader>rb', '<Cmd>sp<CR> <Cmd>term bash %<CR>')    -- Run Bash
map('n', '<leader>rc', '<Cmd>sp<CR> <Cmd>term ./%<<CR>')      -- Run comipiled
map('n', '<leader>rg', '<Cmd>sp<CR> <Cmd>term go %<CR>')      -- Run Go
map('n', '<leader>rj', '<Cmd>sp<CR> <Cmd>term node %<CR>')  -- Run JS prgm
map('n', '<leader>rl', '<Cmd>sp<CR> <Cmd>term lua %<CR>')     -- Run Lua
map('n', '<leader>rp', '<Cmd>sp<CR> <Cmd>term python3 %<CR>') -- Run Python
-- Compile & Run
map('n', '<leader>co', '<Cmd>sp<CR> <Cmd>term cobc -x -o %< % && ./%<<CR>')  -- COBOL
map('n', '<leader>cp', '<Cmd>sp<CR> <Cmd>term g++ -std=c++1z -o %< % && ./%<<CR>')  -- CPP
map('n', '<leader>cc', '<Cmd>sp<CR> <Cmd>term gcc -o %< % && ./%<<CR>')  -- C

-- Concealment
map('n', '<leader>mir',  '<Cmd>CellularAutomaton make_it_rain<CR>')
map('n', '<leader>mgof', '<Cmd>CellularAutomaton game_of_life<CR>')

--[[ User-defined Functions -------------------------------------------------]]

-- Echo a Buffer Option's Value to the User -----------------------------------
function EchoBufferOptionInCmdLine(option)
    print(option .. " is set to " .. vim.bo[option])
end

function EchoBufferOptionInNotify(option)
    vim.notify(option .. " is set to " .. vim.bo[option])
end

-- Textwidth: Toggle between values 0 and 79 ----------------------------------
function ToggleTextwidth()
    if vim.bo.textwidth == 0 then
        vim.bo.textwidth = 79
    else
        vim.bo.textwidth = 0
    end
      EchoBufferOptionInNotify("textwidth")
end

