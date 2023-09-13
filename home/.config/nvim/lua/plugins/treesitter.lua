return {
  {
    "nvim-treesitter/nvim-treesitter",
    requires = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      require'nvim-treesitter.configs'.setup {
        autotag = {
          enable = true,
        },
        ensure_installed = {
          'c',
          'cpp',
          'go',
          'javascript',
          'jq',
          'lua',
          'markdown',
          'python',
          'ruby',
          'rust',
          'sql',
          'typescript'
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        refactor = {
          highlight_definitions = {
            enable = true,
            clear_on_cursor_move = true,
          },
          smart_rename = {
            enable = true,
            keymaps = {
              smart_rename = "grr",
            },
          },
          navigation = {
            enable = true,
            keymaps = {
              goto_definition      = "gnd",
              list_definitions     = "gnD",
              list_definitions_toc = "gO",
              goto_next_usage      = "<A-*>",
              goto_previous_usage  = "<A-#>",
            },
          },
        },
      }
    end,
  },
}
