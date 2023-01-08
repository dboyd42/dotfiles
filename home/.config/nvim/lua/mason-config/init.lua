require('mason').setup()
require('mason-lspconfig').setup{
    ensure_installed = {
        --> Only provide LSP-config server names here
        --> LSP List: https://github.com/williamboman/mason-lspconfig.nvim#configuration
        --> Pkg Index: https://github.com/williamboman/mason.nvim/blob/main/PACKAGES.md
        "golangci_lint_ls", "gopls",        --go (LS)
        "clangd",                           --c/cpp (LS)
        "cssls", "cssmodules_ls",           --css (LS)
        "html",                             --html (LS)
        "jdtls",                            --java (LS)
        "quick_lint_js",                    --javascript (LS)
        "jsonls",                           --json (LS)
        "kotlin_language_server",           --kotlin (LS)
        "sumneko_lua",                      --lua (LS)
        "marksman", "prosemd_lsp",          --markdown (LS)
        "intelephense",                     ---php (LS)
        "perlnavigator",                    --perl (LS)
        "powershell_es",                    --powershell (LS)
        "pyright",                          --python (LS)
        "ruby_ls",                          --ruby (LS)
        "rust_analyzer",                    --rust (LS)
        "sqlls", "sqls",                    --sql (LS)
        "terraformls",                      --terraform (LS)
        "tsserver",                         --typescript (LS)
        "lemminx",                          --xml (LS)
        "yamlls",                           --yaml (LS)
    },
}
    --> DAP List: https://github.com/jay-babu/mason-nvim-dap.nvim/blob/main/lua/mason-nvim-dap/mappings/source.lua
-- require('mason-nvim-dap').setup(
--     { automatic_setup = true },
--     { require 'mason-nvim-dap'.setup_handlers
--         { automatic_installation = true },
--     },
-- )
