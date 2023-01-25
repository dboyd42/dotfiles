--fns to pass args to create key mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local opts2 = { silent = true }

----- ABBBREVIATIONS ----------------------------------------------------------
map('i', 'wof', 'which of the following',  opts2 )
map('i', 'Wof', 'Which of the following',  opts2 )
map('i', 'ccopy', 'Copyright 2023 by David Boyd', opts2 )

