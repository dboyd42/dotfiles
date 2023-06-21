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
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>tlg', ':Telescope live_grep<CR>')
map('n', '<leader>tgb', ':Telescope git_branches<CR>')
map('n', '<leader>tgc', ':Telescope git_commits<CR>')
map('n', '<leader>tgf', ':Telescope git_files<CR>')
map('n', '<leader>tgs', ':Telescope git_status<CR>')
map('n', '<leader>reg',  ':Telescope registers<CR>')
-- END Telescope ...........................................................<<<
