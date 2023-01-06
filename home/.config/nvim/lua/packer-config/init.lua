return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'    --> keep this file as the 1st plugin

    --> lualine: statusline  (replaces Airline)
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    } -- END lualine

    --> Theme: Dracula
    use 'Mofiqul/dracula.nvim'

    --> NvimTree: file explorer
    use { 
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', --optional, for file icons
        },
        tag = 'nightly' --optional, updated every week.  (see issue #1193)
    } --> END NvimTree

    --> Treesitter: highlighting (language parsers, queries, & modules)
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    --> Treesitter-Refactor - External plugin
    use 'nvim-treesitter/nvim-treesitter-refactor'

    --> LSP plugins
    use { "williamboman/mason.nvim" }       --> 1st
    use 'williamboman/mason-lspconfig.nvim' --> 2nd
    use 'neovim/nvim-lspconfig'    --> 3rd: Collection of configs for built-in LSP client
    use 'jose-elias-alvarez/null-ls.nvim' --> inject LSP diagnostics, formattings, code actions, and more...
    use 'L3MON4D3/LuaSnip'         --> Snippets plugin
    use 'hrsh7th/cmp-nvim-lsp'     --> LSP source for nvim-cmp
    use 'hrsh7th/nvim-cmp'         --> Autocompletion plugin
    use 'saadparwaiz1/cmp_luasnip' --> Snippets source for nvim-cmp
    --> END LSP plugins

    --> Icons for nvim-cmp
    use 'onsails/lspkind-nvim' --> vscode-like pictograms for neovim lsp completion items

     --> Notification mgr
    use 'rcarriga/nvim-notify'

    --> Telescope: FzF
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        -- or                          , --tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    } --> END Telescope

    --> Tabline plugin
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
    --> End Tabline
    
    --> Shade: dim inactive panes
    use 'sunjon/shade.nvim'

    --> Autopairing [{()}]
    use 'windwp/nvim-autopairs' 

end)
