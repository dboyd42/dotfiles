return {
  {
    'Zeioth/markmap',
    cmd = {"MarkmapOpen", "MarkmapSave", "MarkmapWatch", "MarkmapWatchStop"},
    lazy = false,
    config = function()
      local map = vim.keymap.set
      -- Markmap Mappings
      map('n', '<leader>mmw', '<cmd>MarkmapWatch<CR>')
      map('n', '<leader>mms', '<cmd>MarkmapSave<CR>')
    end,
  },
}

