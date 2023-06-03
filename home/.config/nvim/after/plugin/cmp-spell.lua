local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = 'spell',
      option = {
        keep_all_entries = false,
        enable_in_context = function()
          return true
        end,
      }, -- END fns
    }, -- END <dict>
  }, -- END sources
}) -- END cmp.setup

vim.opt.spell = true -- Required
vim.opt.spelllang = { 'en_us' } -- Required
