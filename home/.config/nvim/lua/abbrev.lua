--fns to pass args to create key mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local opts2 = { silent = true }

----- ABBBREVIATIONS ----------------------------------------------------------
map('i', 'wof', 'which of the following',  opts )
map('i', 'Wof', 'Which of the following',  opts )
map('i', 'ccopy', 'Copyright 2023 by David Boyd', opts )
map('i', 'hte', 'the', opts)

