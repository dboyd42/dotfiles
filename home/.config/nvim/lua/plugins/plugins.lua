-- Define your main plugin specifications
return {
  {
    "cvigilv/esqueleto.nvim",
    lazy = false,
  },
  {
    "derektata/lorem.nvim",
    lazy = false,
  },
  {
    "dhruvasagar/vim-table-mode",
    lazy = false,
  },
  {
    "eandrju/cellular-automaton.nvim",
    lazy = false,
  },
  --[[ {  -- old version
    "iamcco/markdown-preview.nvim",
    -- build = function()
    --   vim.fn["mkdp#util#install"]()
    -- end,
    lazy = false,
  }, ]]
  {
    "iamcco/markdown-preview.nvim",
    -- install with yarn or npm
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  --[[ {  -- Removed because I don't ever f*ing use this shit
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    lazy = false,
  }, ]]
  {
    "lambdalisue/suda.vim",
    lazy = false,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    main = "ibl",
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
  },
  {
    "mzlogin/vim-markdown-toc",
    build = ":python3 install.py",
    lazy = false,
  },
  {
    "ntpeters/vim-better-whitespace",
    lazy = false,
  },
  {
    "numToStr/Comment.nvim",
    lazy = false,
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
  },
  {
    "onsails/lspkind-nvim",
    lazy = false,
  },
  {
    "preservim/tagbar",
    lazy = false,
  },
  {
    "rcarriga/nvim-notify",
    lazy = false,
  },
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "lewis6991/gitsigns.nvim",
    },
    lazy = false,
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "tpope/vim-repeat",
    lazy = false,
  },
  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    "windwp/nvim-autopairs",
    lazy = false,
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false,
  },
  {
    "kyazdani42/nvim-tree.lua",
    version = "nightly",
    dependencies = {
      {
        "kyazdani42/nvim-web-devicons",
        -- Resolve naming conflict (nvim-web-devicons)
        name = "kyazdani42-web-devicons"
      },
    },
    lazy = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      {
        "kyazdani42/nvim-web-devicons",
        -- Resolve naming conflict (nvim-web-devicons)
        name = "kyazdani42-web-devicons"
      },
    },
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = "nvim-treesitter",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter-refactor",
    dependencies = "nvim-treesitter/nvim-treesitter",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = "nvim-treesitter/nvim-treesitter",
    lazy = false,
  },
  {
    "Zeioth/markmap.nvim",
    build = function()
      vim.fn.system("bun add --global markmap-cli")
    end,
    lazy = false,
  },
  {
    "nvim-treesitter/playground",
    lazy = false,
  },
  {
    "voldikss/vim-floaterm",
    lazy = false,
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-calc",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-look",
      "hrsh7th/cmp-path",
      "hrsh7th/nvim-cmp",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
    lazy = false,
  },
}
