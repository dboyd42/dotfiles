return {
  "iamcco/markdown-preview.nvim",

  -- build = "cd app && bun install", -- This installs the plugin's dependencies
  -- build = "bun install $HOME/.local/share/nvim/lazy/markdown-preview.nvim/app/",
  build = "cd app && ./install.sh", -- This installs the plugin's dependencies
  setup = function()
      vim.g.mkdp_auto_start = 0 -- !Auto open .md files in preview mode
  end,

  ft = { "markdown" }, -- Specify that this should be enabled for Markdown files

  keys = {
    { "<leader>mdp", "<Cmd>MarkdownPreviewToggle<CR>", desc = "Prev Buffer" },
  },
}
