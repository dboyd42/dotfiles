-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]  -- Bypass: `yay -S nvim-packer-git`

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  use 'windwp/nvim-autopairs'                       --> Autopairing [{()}]
  use 'nvim-tree/nvim-web-devicons'                 --> Barbar 1st: Icons
  use {'romgrk/barbar.nvim',                        --> Barbar 2nd: Tabliner
    wants = 'nvim-web-devicons' }
  use 'numToStr/Comment.nvim' 			                --> Commenter
  use 'Mofiqul/dracula.nvim'                        --> Dracula: Theme
  use { 'nvim-lualine/lualine.nvim',                --> LuaLine
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use {'neoclide/coc.nvim', branch = 'release'}     --> LSP Mgr
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
    'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-textobjects' --> Additional textobjects
  use 'onsails/lspkind-nvim'                        --> Icons for LSP completion
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x',  --> Telescope: fzf
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use 'lambdalisue/suda.vim'                        --> rw buffers w/ sudo
  use 'tpope/vim-fugitive'                          --> Git integration
  use 'tpope/vim-repeat'                            --> Repeater: macros
  use 'tpope/vim-surround'                          --> Surroundings
  use 'dhruvasagar/vim-table-mode'                  --> Table Generator
  use 'ntpeters/vim-better-whitespace'              --> Whitespace editor

end)

