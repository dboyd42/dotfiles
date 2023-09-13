return {
  {
    'tpope/vim-fugitive',
    setup = function()
      local map = vim.keymap.set

      -- Mappings
      map('n', '<leader>gs', vim.cmd.Git)
    end,
    lazy = false,
  },
}
