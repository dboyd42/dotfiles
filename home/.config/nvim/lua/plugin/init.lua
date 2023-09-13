--[[ Lazy.nvim ]]--------------------------------------------------------------
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

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are required -- Lazy.nvim $Requirement!
--       (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

--[[ Plugins ]]----------------------------------------------------------------
require("lazy").setup({
  'cvigilv/esqueleto.nvim',                        -- Skeleton files
  'derektata/lorem.nvim',                          -- Lorem Ipsum generator
  'dhruvasagar/vim-table-mode',                    -- Table Generator
  'eandrju/cellular-automaton.nvim',               -- Obfuscate code
  { "iamcco/markdown-preview.nvim",                -- Markdown Preview
    build = function() vim.fn["mkdp#util#install"]() end,
    --[[ ArchLinux:
      1. May still need to build `:call mkdp#util#install()`
      *Note: testing is required: macOS works with current configs
    --]]
    --[[ macOS:
        1. Install the plugin normally
        2. `cd $HOME/.local/share/nvim/site/pack/packer/start`
        ?. `export NODE_OPTIONS=--openssl-legacy-provider`
        3. `yarn install && yarn upgrade`
    --]]
  }, --end markdown-preview
--[[
  { "jackMort/ChatGPT.nvim",                     -- ChatGPT
    config = function()                               -- #TODO:
      require("chatgpt").setup()                      --  1. implement pwMgr
    end,                                              --     sess w/ API key
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    } --end dependencies
  } --end ChatGPT
--]]
  'lambdalisue/suda.vim',                          -- rw buffers w/ sudo
  'mbbill/undotree',                               -- Undo history tree
  'Mofiqul/dracula.nvim',                          -- Colorscheme: Dracula
  { 'mzlogin/vim-markdown-toc',                   -- Markdown TOC generator
        --build = ':python3 install.py',
  },  --end vim-markdown-toc
  'ntpeters/vim-better-whitespace',                -- Whitespace editor
  {'numToStr/Comment.nvim',                       -- Un/Commenting '//'
        config = function()
          require('Comment').setup()
        end
  }, --end comment.nvim
  'nvim-tree/nvim-web-devicons',                   -- Barbar 1st: Icons
  'onsails/lspkind-nvim',                          -- Icons (LSP completion)
  'preservim/tagbar',                              -- Class outline viewer
  --[[ macos: https://docs.ctags.io/en/latest/osx.html
                brew tap universal-ctags/universal-ctags
                brew install --HEAD universal-ctags
  --]]  --end tagbar
  'rcarriga/nvim-notify',                          -- Notification Mgr
  { 'romgrk/barbar.nvim',                         -- Barbar 2nd: Tabliner
        dependencies = {'nvim-tree/nvim-web-devicons',
                 'lewis6991/gitsigns.nvim'
  },  -- end barbar.nvim
  'theprimeagen/harpoon',                       -- File marker
        dependencies = { 'nvim-lua/plenary.nvim' }
  },  -- end harpoon.nvim
  'tpope/vim-fugitive',                            -- Git integration
  'tpope/vim-repeat',                              -- Macros repeater
  'tpope/vim-surround',                            -- Surroundings
  'windwp/nvim-autopairs',                         -- Autopairing [{()}]
  'windwp/nvim-ts-autotag',                        -- " <tags></tags>
  { 'nvim-telescope/telescope.nvim',              -- Fuzzy Finder
        version = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
  }, --end telescope
  { 'kyazdani42/nvim-tree.lua',                   -- File Explorer
        version = 'nightly', -- opt'l, updated every week.  (see issue #1193)
        --dependencies = { 'kyazdani42/nvim-web-devicons', } -- opt'l file icons
        dependencies = { 'nvim-tree/nvim-web-devicons', } -- opt'l file icons
  }, --end nvim-tree
  { 'nvim-lualine/lualine.nvim',                  -- LuaLine
        --dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
  }, --end lualine
  { 'nvim-treesitter/nvim-treesitter',            -- Treesitter
        build = ':TSUpdate',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects', } -- TS txtobjs
  }, --end treesitter
  {'nvim-treesitter/nvim-treesitter-refactor',    -- TS Refactor
         dependencies = "nvim-treesitter/nvim-treesitter"
  }, --end refractor
  -- { "svermeulen/text-to-colorscheme.nvim" }    -- AI Colorschemes
  { 'Zeioth/markmap.nvim',                        -- Mindmap Generator
        -- dependencies: `sudo npm install -g markmap-cli`
  }, --end markmap
  'nvim-treesitter/playground',    -- TS's AST (Abstract Syntax Tree)
  'voldikss/vim-floaterm',                         -- FloatermToggle
  { 'VonHeikemen/lsp-zero.nvim',                  -- LSP Mgr* (2 of 2)
        branch = 'v2.x',
        dependencies = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},    -- Required: Nvim LSP client configs
          { 'williamboman/mason.nvim',  -- Opt'l: LSP+ Manager
              build = function()
                  pcall(vim.cmd, 'MasonUpdate')
              end,
          }, --end mason
          {'williamboman/mason-lspconfig.nvim'}, -- Opt'l
          -- Autocompletion
          {'hrsh7th/cmp-buffer'},       -- Opt'l: curr->file suggestions
          {'hrsh7th/cmp-calc'},         -- Opt'l
          {'hrsh7th/cmp-cmdline'},      -- Opt'l
          {'hrsh7th/cmp-emoji'},        -- Opt'l
          {'hrsh7th/cmp-nvim-lsp'},     -- Required: lsps' completions
          {'hrsh7th/cmp-nvim-lua'},     -- Opt'l
          {'hrsh7th/cmp-look'},         -- Opt'l
          {'hrsh7th/cmp-path'},         -- Opt'l: filesystem suggestions
          -- {'uga-rosa/cmp-dictionary'},
          {'hrsh7th/nvim-cmp'},         -- Required
          {'saadparwaiz1/cmp_luasnip'}, -- Opt'l: custom snippet suggestions
          -- Snippets
          {'L3MON4D3/LuaSnip'},                  -- Required
          {'rafamadriz/friendly-snippets'},      -- Opt'l
      }, --end dependencies
  }, --end lsp-zero
})  --end plugins
