vim.notify = require("notify")  -- Global: all plugins set to use notify
local notify = require('notify') -- Set as local default notify function
local map = vim.keymap.set -- Nvim API func (Lua exclusive)
local opts = { silent = true }

notify.setup({
  background_colour = "#000000",
})

-- Display a sample notification
map('n', '<leader>ne', ':lua require("notify")("Hi, Mom!")<CR>', opts)
-- Show notifications history
map('n', '<leader>nh', ':Telescope notify<CR>', opts)
-- Close current notification windows
map('n', '<leader>nc', function() notify.dismiss( { silent = false }) end, opts)

