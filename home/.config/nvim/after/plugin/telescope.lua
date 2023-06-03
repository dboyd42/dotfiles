local builtin = require('telescope.builtin')
local map = vim.keymap.set

--[[ Mappings ---------------------------------------------------------------]]
-- Bindings from ThePrimeagen:
-- map('n', '<leader>pf', builtin.find_files, {})   --default = ff
-- map('n', '<leader>pg', builtin.git_files, {})    --default =
-- map('n', '<leader>ps', function()                --default =
  -- builtin.grep_string({ search = vim.fn.input("Grep > ")});
-- end)

-- Bindings for reference:
-- map('n', '<leader>fg', builtin.live_grep, {})    --default = fg
-- map('n', '<leader>fb', builtin.buffers, {})      --default = fb
-- map('n', '<leader>fh', builtin.help_tags, {})    --default = fh
--- Telescope ..............................................................>>>
map('n', '<leader>ff', ':Telescope find_files<CR>',   opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>',    opts)
map('n', '<leader>gb', ':Telescope git_branches<CR>', opts)
map('n', '<leader>gc', ':Telescope git_commits<CR>',  opts)
map('n', '<leader>gf', ':Telescope git_files<CR>',    opts)
map('n', '<leader>tgs', ':Telescope git_status<CR>',   opts)
map('n', '<leader>reg',  ':Telescope registers<CR>',    opts)
-- END Telescope ...........................................................<<<
