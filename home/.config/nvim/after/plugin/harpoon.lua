local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
map = vim.keymap.set

--[[ Mappings ---------------------------------------------------------------]]
-- map('n', '<leader>a', mark.add_file)
map('n', '<leader>hc', mark.add_file)
map('n', '<leader>hh', ui.toggle_quick_menu)

-- Quick Access: file 1,2,3,4 -> a,s,d,f
map('n', '<leader>ha', function() ui.nav_file(1) end)
map('n', '<leader>hs', function() ui.nav_file(2) end)
map('n', '<leader>hd', function() ui.nav_file(3) end)
map('n', '<leader>hf', function() ui.nav_file(4) end)

