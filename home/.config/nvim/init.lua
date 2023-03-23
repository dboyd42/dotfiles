-- Global Settings ------------------------------------------------------------
vim.g.python3_host_prog = '/usr/bin/python'
vim.g.ruby_host_prog = '$HOME/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'
-- vim.g.loaded_perl_provider = 0   -- Uncomment if PERL is not playing nice.

-- Resolve Errors -------------------------------------------------------------
vim.opt.termguicolors = true  --> Opacity chgs req termguicolors to be set...
vim.opt.guicursor = 'a:ver100'  --> Un-hides cursorline word on 1st char

-- Load Local Modules ---------------------------------------------------------
require('packer-config/plugins')	          --> Packer Plugin Manager
require('autocmds/autocmds')                --> Autocommands/Autogroups
require('barbar-config/barbar')             --> Tabline
require('coc-config/coc-cfg')               --> LSP mgr
require('comment-config/comment-cfg')       --> Commenter
require('lualine-config/lualine-cfg')       --> statusline
require('nvim-autopairs-config/autopairs')  --> autopairs
require('nvim-notify-config/notify')        --> notifications
require('nvim-tree-config/tree')            --> file-explorer
require('treesitter-config/treesitter')     --> syntax hl & language parser
require('colorschemes-config/dracula')      --> Theme

-- Load Local Settings --------------------------------------------------------
require('abbreviations/abbrev')             --> Abbreviations
require('settings/my-settings')             --> personal settings
require('mappings/keybindings')             --> key-bindings
vim.notify = require("notify")		          --> notifications
require("notify").history()		              --> notifications

