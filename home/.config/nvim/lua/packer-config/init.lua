return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'           --> packer: KEEP THIS AS LINE #2!

    use 'dhruvasagar/vim-table-mode'                       --> Table Generator
    --> LuaLine: statusline ------------------------------------------------>>>
    use { 'nvim-lualine/lualine.nvim',                          ---
      requires = { 'kyazdani42/nvim-web-devicons', opt = true } --- LuaLine
    }                                                           ---
    ---> END LuaLine -------------------------------------------------------<<<
    use 'Mofiqul/dracula.nvim'                              --> Theme: Dracula
    --> NvimTree: file explorer -------------------------------------------->>>
    use {
        'kyazdani42/nvim-tree.lua',                 ---    - NvimTree -
        requires = {                                ---
            'kyazdani42/nvim-web-devicons',         --optional, for file icons
        },                                          ---
        tag = 'nightly' --optional, updated every week.  (see issue #1193) --
    }
    --> END NvimTree -------------------------------------------------------<<<
    --> Treesitter: highlighting, lang-parser, queries, modules, etc ------->>>
    use {
        'nvim-treesitter/nvim-treesitter',          --
        run = ':TSUpdate'                           --
    }                                               --> END Treesitter
    --> Treesitter plugins ------------------------------------------------->>>
    use 'nvim-treesitter/nvim-treesitter-refactor'  --> Refactor
    --> END Treesitter -----------------------------------------------------<<<
    --> LSP plugins -------------------------------------------------------->>>
    use { 'williamboman/mason.nvim' }                                   --> 1st
    use 'williamboman/mason-lspconfig.nvim'                             --> 2nd
    use 'neovim/nvim-lspconfig'    --> 3rd: Collection of configs for built-in LSP client
    use 'jose-elias-alvarez/null-ls.nvim' --> inject LSP diagnostics, formattings, code actions, and more...
    use 'L3MON4D3/LuaSnip'         --> Snippets plugin
    use 'hrsh7th/cmp-nvim-lsp'     --> LSP source for nvim-cmp
    use 'hrsh7th/nvim-cmp'         --> Autocompletion plugin
    use 'saadparwaiz1/cmp_luasnip' --> Snippets source for nvim-cmp
    --> END LSP plugins ----------------------------------------------------<<<
    use 'onsails/lspkind-nvim' --> vscode-like pictograms for neovim lsp completion items
    use 'ntpeters/vim-better-whitespace'            --> Whitespace hl & remover
    use 'rcarriga/nvim-notify'                          --> Notification mgr
    --> Telescope: fzf ----------------------------------------------------->>>
    use {                                                   --
        'nvim-telescope/telescope.nvim', branch = '0.1.x',  -- Telescope
        requires = { {'nvim-lua/plenary.nvim'} }            --
    }                                                       --
    --> END Telescope ------------------------------------------------------<<<
    use 'nvim-tree/nvim-web-devicons'                       --> Tabline plugin
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'} --> End Tabline
    -- use 'sunjon/shade.nvim'                  --> Shade: dim inactive panes
    use 'tpope/vim-repeat'                                 --> Repeat macros
    use 'tpope/vim-surround'                               --> Modify \B
    use 'windwp/nvim-autopairs'                         --> Autopairing [{()}]
end)
