----- Global Settings ---------------------------------------------------------
vim.g.python3_host_prog = '/usr/bin/python'
vim.g.ruby_host_prog = '/home/bhatm/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'
vim.g.loaded_perl_provider = 0

---- Load local modules -------------------------------------------------------
require('barbar-config')                -- tabline
require('colorschemes-config.dracula')
require('comment-config')               -- Commenter
require('mason-config') 		        -- LSP mgr
require('lsp-config.language-servers')  -- LSP servers
require('lsp-config.nvim-cmp')          -- autocompletion
require('lualine-config')               -- statusline
require('mappings') 		            -- key-bindings
require('nvim-autopairs-config')	    -- autopairs
require('nvim-notify-config')	        -- notifications
require('nvim-tree-config')	            -- file-explorer
require('packer-config')	            -- plugin mgr
require('settings')                     -- personal settings
--require('shade-config')                -- window dimmer
require('treesitter-config')            -- syntax hl & language parser

