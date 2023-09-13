return {
  {
    'preservim/tagbar',
    config = function()
      local map = vim.keymap.set
      local opts = { noremap = true, silent = true }

      map('n', 'tb', '<cmd>TagbarToggle<CR>', opts)
    end,
  },
}
