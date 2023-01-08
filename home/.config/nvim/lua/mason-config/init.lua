require('mason').setup()
require('mason-lspconfig').setup{
    ensure_installed = {
        --> Only provide LSP-config server names here
        --> Full List: https://github.com/williamboman/mason-lspconfig.nvim#configuration
        "golangci_lint_ls", "gopls",        --go
        "clangd",                           --c/cpp
        "cssls", "cssmodules_ls",           --css
        "html",                             --html
        "jdtls",                            --java
        "quick_lint_js",                    --javascript
        "jsonls",                           --json
        "kotlin_language_server",           --kotlin
        "sumneko_lua",                      --lua
        "marksman", "prosemd_lsp",          --markdown
        "intelephense",                     ---php
        "perlnavigator",                    --perl
        "powershell_es",                    --powershell
        "pyright",                          --python
        "ruby_ls",                          --ruby
        "rust_analyzer",                    --rust
        "sqlls", "sqls",                    --sql
        "terraformls",                      --terraform
        "tsserver",                         --typescript
        "lemminx",                          --xml
        "yamlls",                           --yaml
    },
}

-- require("lspconfig").sumneko_lua.setup {}
