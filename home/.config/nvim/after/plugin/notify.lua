local notify = require('notify') -- Set as global default notify function
local map = vim.keymap.set -- Nvim API func (Lua exclusive)

notify.setup({
  background_colour = "#000000",
})
require('notify').history() -- List past notifictions

-- Display a sample notification
map('n', '<leader>ne', ':lua require("notify")("Hi, Mom!")<CR>')
-- Close current notification windows
map('n', '<leader>nc', function() notify.dismiss( { silent = true }) end)

