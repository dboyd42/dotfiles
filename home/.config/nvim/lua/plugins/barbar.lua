return {
  {
    "romgrk/barbar.nvim",
    keys = {
      { "<A-,>", "<Cmd>BufferPrevious<CR>", desc = "Prev Buffer" },
      { "<A-.>", "<Cmd>BufferNext<CR>", desc = "Next Buffer" },
      { "<A-h>", "<Cmd>BufferPrevious<CR>", desc = "Prev Buffer" },
      { "<A-l>", "<Cmd>BufferNext<CR>", desc = "Next Buffer" },
      { "<A-j>", "<Cmd>BufferMovePrevious<CR>", desc = "Move Prev" },
      { "<A-k>", "<Cmd>BufferMoveNext<CR>", desc = "Move Next" },
      { "<A-1>", "<Cmd>BufferGoto 1<CR>" },
      { "<A-2>", "<Cmd>BufferGoto 2<CR>" },
      { "<A-3>", "<Cmd>BufferGoto 3<CR>" },
      { "<A-4>", "<Cmd>BufferGoto 4<CR>" },
      { "<A-5>", "<Cmd>BufferGoto 5<CR>" },
      { "<A-6>", "<Cmd>BufferGoto 6<CR>" },
      { "<A-7>", "<Cmd>BufferGoto 7<CR>" },
      { "<A-8>", "<Cmd>BufferGoto 8<CR>" },
      { "<A-9>", "<Cmd>BufferGoto 9<CR>" },
      { "<A-0>", "<Cmd>BufferLast<CR>" },
      { "<A-p>", "<Cmd>BufferPin<CR>", desc = "Pin Buffer" },
      { "<A-c>", "<Cmd>BufferClose<CR>", desc = "Close Buffer" },
      { "<leader>bc", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", desc = "Close Other Buffers" },
      { "<C-p>", "<Cmd>BufferPick<CR>", desc = "Pick Buffer" },
      { "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", desc = "Sort By Buffer Number" },
      { "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", desc = "Sort By Directory" },
      { "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", desc = "Sort By Language" },
      { "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", desc = "Sort By Window Number" },
    },
    config = function()
      require("bufferline").setup({
        animation = true,
        closable = true,
        tabpages = true,
        hide = { extensions = true },
        clickable = true,
        separator_at_end = true,
      })
    end
  }
}
