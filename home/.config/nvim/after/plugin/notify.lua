local notify = require('notify') -- Set as global default notify function
local map = vim.keymap.set -- Nvim API func (Lua exclusive)

notify.setup({
  background_colour = "#000000",
})
require('notify').history() -- List past notifictions

-- Display a sample notification
map('n', '<leader>ne', ':lua require("notify")("My super important message")<CR>')

