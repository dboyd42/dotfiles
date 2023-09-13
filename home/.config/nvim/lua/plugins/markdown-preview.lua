return {
  "iamcco/markdown-preview.nvim",

  build = "cd app && bun install", -- This installs the plugin's dependencies
  setup = function()
      vim.g.mkdp_auto_start = 0 -- !Auto open .md files in preview mode
  end,

  ft = { "markdown" }, -- Specify that this should be enabled for Markdown files

  keys = {
    { "<leader>mdp", "<Cmd>MarkdownPreviewToggle<CR>", desc = "Prev Buffer" },
  },
}

--[[ Installation:

ArchLinux:
  1. May still need to run `:call mkdp#util#install()`
  *Note: testing is required: macOS works with current configs

macOS:
  1. Install the plugin normally
  2. `bun install $HOME/.local/share/nvim/lazy/markdown-preview`

--]]
