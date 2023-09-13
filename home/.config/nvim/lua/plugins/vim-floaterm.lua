return {
  {
    'voldikss/vim-floaterm',
    config = function()
      local map = vim.keymap.set
      map("n", "<leader>ft", "<cmd>FloatermToggle<CR>")
    end,
  },
}
