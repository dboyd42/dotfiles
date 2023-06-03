-- Global Settings ------------------------------------------------------------
--vim.g.python3_host_prog = '/usr/bin/python' -- Use if python2 NOT installed
vim.g.python3_host_prog = '/usr/bin/python3'  -- Use for Asahi Linux
vim.g.ruby_host_prog = '$HOME/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'
-- vim.g.loaded_perl_provider = 0   -- Uncomment if PERL is not playing nice.

-- Resolve Errors -------------------------------------------------------------
vim.opt.termguicolors = true  --> Opacity issues (Notify)
vim.opt.guicursor = 'a:ver100'  --> Un-hides cursorline word on 1st char

-- Load Local Settings --------------------------------------------------------
require('plugins')              -- Packer Plugins
require('my-abbrev')            -- Abbreviations
require('my-autocmds')          -- Autocommands
require('my-settings')          -- Personal Settings
require('my-keymaps')           -- Mappings
