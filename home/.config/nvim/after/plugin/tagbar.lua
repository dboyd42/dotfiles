local map = vim.keymap.set -- Nvim API func (Lua exclusive)
local opts = { noremap = true, silent = true }

map('n', 'tb', '<cmd>TagbarToggle<CR>', opts)
