-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

--[[                    NOTES
  - Packer Error:
        "Unable to read current working directory: No such file or directory"
  - Solution: Exit vim, change cwd to your .config/nvim/, repopen plugins file
]]

-- Startup ----------------------------------------------------STARTUP-@BEGIN==
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' ---------------------- -- Must remain on top!!!

  use 'cvigilv/esqueleto.nvim'                        -- Skeleton files
  use 'derektata/lorem.nvim'                          -- Lorem Ipsum generator
  use 'dhruvasagar/vim-table-mode'                    -- Table Generator
  use 'eandrju/cellular-automaton.nvim'               -- Obfuscate code
  use({ "iamcco/markdown-preview.nvim",               -- Markdown Preview
    run = function() vim.fn["mkdp#util#install"]() end,
    --[[ ArchLinux:
      1. May still need to run `:call mkdp#util#install()`
      *Note: testing is required: macOS works with current configs
    --]]
    --[[ macOS:
        1. Install the plugin normally
        2. `cd $HOME/.local/share/nvim/site/pack/packer/start`
        ?. `export NODE_OPTIONS=--openssl-legacy-provider`
        3. `yarn install && yarn upgrade`
    --]]
  }) --end markdown-preview
  use({ "jackMort/ChatGPT.nvim",                     -- ChatGPT
    config = function()                               -- #TODO:
      require("chatgpt").setup()                      --  1. implement pwMgr
    end,                                              --     sess w/ API key
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    } --end requires
  }) --end ChatGPT
  use 'lambdalisue/suda.vim'                          -- rw buffers w/ sudo
  use 'mbbill/undotree'                               -- Undo history tree
  use 'Mofiqul/dracula.nvim'                          -- Colorscheme: Dracula
  use 'ntpeters/vim-better-whitespace'                -- Whitespace editor
  use {'numToStr/Comment.nvim',                       -- Un/Commenting '//'
        config = function()
          require('Comment').setup()
        end
  } --end comment
  use 'nvim-tree/nvim-web-devicons'                   -- Barbar 1st: Icons
  use 'onsails/lspkind-nvim'                          -- Icons (LSP completion)
  use 'preservim/tagbar'                              -- Class outline viewer
  --[[ macos: https://docs.ctags.io/en/latest/osx.html
                brew tap universal-ctags/universal-ctags
                brew install --HEAD universal-ctags
  --]] --end tagbar
  use 'rcarriga/nvim-notify'                          -- Notification Mgr
  use { 'romgrk/barbar.nvim',                         -- Barbar 2nd: Tabliner
        wants = {'nvim-tree/nvim-web-devicons',
                 'lewis6991/gitsigns.nvim' }}
  use { 'theprimeagen/harpoon',                       -- File marker
        requires = { 'nvim-lua/plenary.nvim' }}
  use 'tpope/vim-fugitive'                            -- Git integration
  use 'tpope/vim-repeat'                              -- Macros repeater
  use 'tpope/vim-surround'                            -- Surroundings
  use 'windwp/nvim-autopairs'                         -- Autopairing [{()}]
  use 'windwp/nvim-ts-autotag'                        -- " <tags></tags>
  use { 'nvim-telescope/telescope.nvim',              -- Fuzzy Finder
        tag = '0.1.x',
        requires = { 'nvim-lua/plenary.nvim' }
  } --end telescope
  use { 'kyazdani42/nvim-tree.lua',                   -- File Explorer
        tag = 'nightly', -- opt'l, updated every week.  (see issue #1193)
        requires = { 'kyazdani42/nvim-web-devicons', } -- opt'l file icons
  } --end nvim-tree
  use { 'nvim-lualine/lualine.nvim',                  -- LuaLine
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } --end lualine
  use { 'nvim-treesitter/nvim-treesitter',            -- Treesitter
        run = ':TSUpdate'
  } --end treesitter
  use {'nvim-treesitter/nvim-treesitter-refactor',    -- TS Refactor
         requires = "nvim-treesitter/nvim-treesitter"
  } --end refractor
  use { 'nvim-treesitter/nvim-treesitter-textobjects',-- TS Add'l txtobjs
         after = 'nvim-treesitter',
         requires = 'nvim-treesitter/nvim-treesitter'
  } --end treesitter-textobjects
  -- use { "svermeulen/text-to-colorscheme.nvim" }    -- AI Colorschemes
  use { 'Zeioth/markmap.nvim',                        -- Mindmap Generator
        -- REQUIRES: `sudo npm install -g markmap-cli`
  } --end markmap
  use 'nvim-treesitter/playground'    -- TS's AST (Abstract Syntax Tree)
  use 'voldikss/vim-floaterm'                         -- FloatermToggle
  use { 'VonHeikemen/lsp-zero.nvim',                  -- LSP Mgr* (2 of 2)
        branch = 'v2.x',
        requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},    -- Required: Nvim LSP client configs
          { 'williamboman/mason.nvim',  -- Opt'l: LSP+ Manager
              run = function()
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
      } --end requre
  } --end lsp-zero

end) -- end Packer
--[[ ------------------------------------------------------------------------]]
--[[ ------------------------ Help Documentation ----------------------------]]
--[[
--------------
--- Packer ---
--------------
Convert plug mgr syntax to packer syntax:
  a) Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  b) use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )

------------------------
--- LSP-Zero & Mason ---
------------------------
List of Avail LSP configs:
  https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
Install an LSP:
  Method 1) :LSPInstall <lsp-name>
  Method 2) :Mason
  Method 3) Input LSP-name
  * Use methods 1|2 for temporary/experimental LSPs
  * Use method 3 for persistence

--]]
