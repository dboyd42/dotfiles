-- Global Settings ------------------------------------------------------------

-- Resolve Errors -------------------------------------------------------------
vim.opt.termguicolors = true  --> Opacity issues (Notify)
vim.opt.guicursor = 'a:ver100'  --> Un-hides cursorline word on 1st char

-- Load Local Settings --------------------------------------------------------
require('plugins')           -- Lazy.nvim plugin mgr & plugins
--require('lazy.lazy')            -- lazypath
require('abbrev')            -- Abbreviations
require('autocmds')          -- Autocommands
require('keymaps')           -- Mappings
require('settings')          -- Personal Settings

-- Troubleshooting ------------------------------------------------------------
