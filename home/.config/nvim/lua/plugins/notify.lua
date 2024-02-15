return {
  {
    'rcarriga/nvim-notify',
    config = function()
      local notify = require('notify')
      local map = vim.keymap.set

      vim.notify = require("notify")

      notify.setup({
        background_colour = "#000000",
      })

      map('n', '<leader>ne', ':lua require("notify")("Hi, Mom!")<CR>', { silent = true })
      map('n', '<leader>nh', ':Telescope notify<CR>', { silent = true })
      map('n', '<leader>nc', function() notify.dismiss({ silent = false }) end, { silent = true })
      map('i', '<localleader> ', function() notify.dismiss({ silent = false }) end, { silent = true })
      map('i', '<localleader>nc', function() notify.dismiss({ silent = false }) end, { silent = true })
    end,
  },
}
