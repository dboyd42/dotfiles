return {
  {
    'neovim/nvim-lspconfig',
    -- dependencies = 'lazy-git.nvim',
    config = function()
      -- LSP-Zero Configuration
      local lsp = require("lsp-zero")

      lsp.preset("recommended")

      -- Install new LSPs here! (via Mason)
      -- Ref: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
      lsp.ensure_installed({
        -- 'bashls', -- ERR: Always some installation error
        -- codelldb (DAP): C, C++, Rust --REQ: Manual install
        -- 'glint', -- Go lint --REQ: MasonInstall glint
        -- 'gopls', -- Go LSP --REQ: MasonInstall gopls
        -- 'jq-lsp', -- JQ LSP ;; Manual Installation Required: `:MasonInstall jq-lsp`
        'jsonls', -- JSON
        -- 'ltex', -- LTeX LSP for Language Tool with support for: md, txt, etc
        'lua_ls', --lua-language-server
        -- 'powershell_es',
        'pylsp', -- Python-lsp-server
        'rust_analyzer', --rust-analyzer
        -- 'tsserver', --typescript
      })

      -- Fix Undefined global 'vim' lsp.configure('lua-language-server', {
      lsp.configure('lua_ls', {
        settings = { Lua = { diagnostics = { globals = { 'vim' }}}}
      })

      -- require('lsp-zero').preset({}).set_sign_icons({
      lsp.preset({}).set_sign_icons({
        error = '✘', -- error = 'E',
        warn = '▲',  -- warn = 'W',
        hint = '⚑',  -- hint = 'H',
        info = '»'   -- info = 'I'
      })

      lsp.on_attach(function(client, bufnr)
        local opts = { buffer = bufnr, remap = false }

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        -- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
      end)

      lsp.setup()

      -- Nvim-Cmp Configuration
      local cmp = require('cmp')

      cmp.setup({
        -- Change formatting of completion item
        formatting = {
          -- Changing the fields order so the icon is the first
          fields = { 'kind', 'menu', 'abbr' },
          -- fields = { 'menu', 'abbr', 'kind' }, -- Default
          format = require('lspkind').cmp_format({
            mode = 'symbol', -- show only symbol annotations
            maxwidth = 50, -- prevent the popup from showing > provided characters
            -- when popup menu > maxwidth, the truncated part will show ellipsis_char
            ellipsis_char = '...',
          })
        }, -- END formatting
        -- Keymaps
        mapping = {
          -- Confirm w/o selecting the item
          ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
          -- ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['C-c'] = cmp.mapping.abort(),
          -- ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }, -- END mapping
        -- Make the first item in completion menu always be selected
        preselect = 'item',
        completion = {
          --[[ Commented out autocomplete to resolve error:
                "Error executing vim.schedule lua callback"
          -- autocomplete = true, -- invoke completion menu automatically
          --]]
          completopt = 'menu,menuone,noinsert'
        },
        -- Add borders to completion menu
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        } -- END window
      }) -- END cmp.setup

      vim.diagnostic.config({
        virtual_text = true
      })
    end,
    lazy = false,
  },
}
