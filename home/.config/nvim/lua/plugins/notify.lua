return {
  {
    'rcarriga/nvim-notify',
    config = function()
      local notify = require('notify')
      local map = vim.keymap.set

      vim.notify = require("notify")

      notify.setup({
        background_colour = "#000000",  -- Transparency
      })

      --[[ Functions --------------------------------------------------------]]
      -- Dismiss notifications and clear search highlighting
      local function dismissAndClearSearch()
        notify.dismiss({ silent = false }) -- Dismiss notifications
        vim.cmd('nohl') -- Clear search highlighting
      end

      --[[ Keymaps ----------------------------------------------------------]]
      map('n', '<leader>ne', ':lua require("notify")("Hi, Mom!")<CR>', { silent = true })
      map('n', '<leader>nh', ':Telescope notify<CR>', { silent = true })
      map('n', '<leader>nc', function() notify.dismiss({ silent = false }) end, { silent = true })
      map('n', '<localleader> ', dismissAndClearSearch, { silent = true })
      map('i', '<localleader> ', dismissAndClearSearch, { silent = true })
    end,
  },
}
