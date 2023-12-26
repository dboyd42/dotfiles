-- Global Settings ------------------------------------------------------------

-- Resolve Errors -------------------------------------------------------------
vim.opt.termguicolors = true  --> Opacity issues (Notify)
vim.opt.guicursor = 'a:ver100'  --> Un-hides cursorline word on 1st char

-- Lazy Plugin Manager -------------------------------------------------------

-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = ' '   -- Space
vim.g.maplocalleader = '\\' -- Backslash

-- Initialize Lazy to load your main plugin specifications
require("lazy").setup("plugins")

-- Load Local Settings --------------------------------------------------------
require("abbrev")                 -- Abbreviations
require("autocmds")               -- Autocommands
require("keymaps")                -- Mappings
require("settings")               -- Personal Settings

-- Get the operating system type
local is_windows = vim.fn.has("win32") == 1
local is_mac = vim.fn.has("mac") == 1
local is_linux = vim.fn.has("unix") == 1 and not is_mac

-- Set g:python3_host_prog based on the operating system
if is_windows then
  vim.g.python3_host_prog = 'C:/tools/python3.exe'
elseif is_mac then
  vim.g.python3_host_prog = '/opt/homebrew/bin/python3'
elseif is_linux then
  vim.g.python3_host_prog = '/bin/python3'
end

-- Troubleshooting ------------------------------------------------------------

