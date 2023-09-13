return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim',
		},
    config = function()
      local map = vim.keymap.set

      -- Bindings for Telescope commands
      map('n', '<leader>ff', ':Telescope find_files<CR>')
      map('n', '<leader>tlg', ':Telescope live_grep<CR>')
      map('n', '<leader>tgb', ':Telescope git_branches<CR>')
      map('n', '<leader>tgc', ':Telescope git_commits<CR>')
      map('n', '<leader>tgf', ':Telescope git_files<CR>')
      map('n', '<leader>tgs', ':Telescope git_status<CR>')
      map('n', '<leader>reg', ':Telescope registers<CR>')
    end,
  },
}
