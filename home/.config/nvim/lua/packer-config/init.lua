return require'packer'.startup(function()
  use 'wbthomason/packer.nvim'                      --> Packer

  use 'windwp/nvim-autopairs'                       --> Autopairing [{()}]
  use 'nvim-tree/nvim-web-devicons'                 --> Barbar 1st: Icons
  use {'romgrk/barbar.nvim',                        --> Barbar 2nd: Tabliner
    wants = 'nvim-web-devicons'
  }
  use {                                             --> Commenter
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup()
  end
  }
  use 'Mofiqul/dracula.nvim'                        --> Dracula: Theme
  use { 'nvim-lualine/lualine.nvim',                --> LuaLine
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  --> LSP plugins ---------------------------------------------------------->>>
  use { 'williamboman/mason.nvim' }                 --> 1st: LSP Mgr
  use 'williamboman/mason-lspconfig.nvim'           --> 2nd: LSP Pkg Mgr
  use 'neovim/nvim-lspconfig'                       --> 3rd: LSP Configs
  use 'L3MON4D3/LuaSnip'                            --> Snippets plugin
  use 'hrsh7th/cmp-nvim-lsp'                        --> LSP src for nvim-cmp
  use 'hrsh7th/nvim-cmp'                            --> Autocompletion
  use 'saadparwaiz1/cmp_luasnip'                    --> Snippets src for nvim-cmp
  --> END LSP plugins ------------------------------------------------------<<<
  use 'rcarriga/nvim-notify'                        --> Notification Mgr
  use {                                             --> NvimTree: File Explorer
    'kyazdani42/nvim-tree.lua',
    requires = {
        'kyazdani42/nvim-web-devicons', --optional, for file icons
    },
    tag = 'nightly' --optional, updated every week.  (see issue #1193)
  }
  use 'nvim-treesitter/nvim-treesitter-refactor'    --> Refactor (TreeSitter)
  use {                                             --> TreeSitter (TS)
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'onsails/lspkind-nvim'                        --> LSPKing: LSP completion icons
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x',  --> Telescope: fzf
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use 'tpope/vim-repeat'                            --> Repeater: macros
  use 'tpope/vim-surround'                          --> Surroundings
  use 'dhruvasagar/vim-table-mode'                  --> Table Generator
  use 'ntpeters/vim-better-whitespace'              --> Whitespace editor
end)
