return {
  {
    'mbbill/undotree',
    config = function()
      local map = vim.keymap.set
      map('n', '<leader>u', vim.cmd.UndotreeToggle)
    end,
  },
}
