-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions <!!!
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
--  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
--  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
--  vim.keymap.set('n', '<space>wl', function()
--    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--    end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

----- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion -----
-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()
----- END capabilities

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

require('lspconfig')["golangci_lint_ls"].setup{         --go
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["gopls"].setup{        --go
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["clangd"].setup{       --c/cpp
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["cssls"].setup{        --css
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["cssmodules_ls"].setup{        --css
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["html"].setup{         --html
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["jdtls"].setup{        --java
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["quick_lint_js"].setup{        --javascript
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["jsonls"].setup{       --json
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["kotlin_language_server"].setup{       --kotlin
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["sumneko_lua"].setup{      --lua
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["marksman"].setup{         --markdown
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["prosemd_lsp"].setup{      --markdown
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["intelephense"].setup{         ---php
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["perlnavigator"].setup{        --perl
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["powershell_es"].setup{        --powershell
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["pyright"].setup{      --python
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["ruby_ls"].setup{      --ruby
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["rust_analyzer"].setup{        --rust
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["sqlls"].setup{        --sql
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["sqls"].setup{         --sql
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["terraformls"].setup{      --terraform
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["tsserver"].setup{         --typescript
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["lemminx"].setup{      --xml
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')["yamlls"].setup{       --yaml
    on_attach = on_attach,
    flags = lsp_flags,
}
