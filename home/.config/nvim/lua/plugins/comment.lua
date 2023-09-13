return {
  {
    "numToStr/Comment.nvim",
    config = function()
      require('Comment').setup {
        padding = true,
        sticky = true,
        ignore = nil,
        toggler = {
          line = '//',
          block = 'gbc',
        },
        opleader = {
          line = '//',
          block = 'gb',
        },
        extra = {
          above = 'gcO',
          below = 'gco',
          eol = 'gcA',
        },
        mappings = {
          basic = true,
          extra = true,
        },
        pre_hook = nil,
        post_hook = nil,
      }
    end,
    lazy = false,
  },
}

