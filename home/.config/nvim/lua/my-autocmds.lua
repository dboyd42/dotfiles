-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------

-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup

local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

-- General settings:
--------------------

-- Don't auto comment new lines
autocmd('BufEnter', {
  pattern = '',
  command = 'set fo-=c fo-=r fo-=o'
})

-- Settings for filetypes:
--------------------------

-- Set indentation to 2 spaces
augroup('setIndent', { clear = true })
autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'c', 'cpp', 'css', 'html',
    'javascript', 'lua', 'markdown', 'md',
    'typescript', 'scss', 'xml', 'xhtml', 'yaml'
  },
  command = 'setlocal shiftwidth=2 tabstop=2'
})

-- Terminal settings:
---------------------
-- To start terminal: `:vsp +term` OR `:sp | term`

-- Open a Terminal on the right tab
autocmd('CmdlineEnter', {
  command = 'command! Term :botright vsplit term://$SHELL'
})

-- Enter insert mode when switching to terminal
autocmd('TermOpen', {
  command = 'setlocal listchars= nonumber norelativenumber nocursorline',
})

autocmd('TermOpen', {
  pattern = '',
  command = 'startinsert'
})

-- Close terminal buffer on process exit
autocmd('BufLeave', {
  pattern = 'term://*',
  command = 'stopinsert'
})

--[[
augroup('exec_code', { clear = true })
  -- execute python code
autocmd( { 'FileType', 'Buffer' }, {
	group = 'exec_code',
	pattern = { 'python', 'py' },
	command = map('n', '<leader>rp', ':sp<CR> :term python3 %<CR>')
})
--]]
--augroup END
    --command = "map('n', '<leader>rp', ':sp<CR> :term python3 %<CR>')"
--[[
  -- execute javascript code
  autocmd FileType javascript nnoremap <buffer> <leader>r
    \ :sp<CR> :term javascript %<CR> :startinsert<CR>

  -- execute bash code
  autocmd FileType bash,sh nnoremap <buffer> <leader>r
    \ :sp<CR> :term bash %<CR> :startinsert<CR>
--]]
