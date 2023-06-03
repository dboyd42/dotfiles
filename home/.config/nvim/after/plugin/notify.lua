vim.notify = require('notify') -- Set as global default notify function

require('notify').setup({
  background_colour = "#000000",
})
require('notify').history() -- List past notifictions

