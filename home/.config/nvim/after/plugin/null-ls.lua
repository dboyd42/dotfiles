local null_ls = require("null-ls")

-- register any number of sources simultaneously
-- local sources = {
--     -- null_ls.builtins.formatting.prettier,
--     -- null_ls.builtins.diagnostics.write_good,
--     -- null_ls.builtins.code_actions.gitsigns,
--     -- null_ls.builtins.completion.spell, -- works, but !want w/ py,cpp,etc
--     null_ls.builtins.completion.spell.with({
--       filetypes = { "md", "markdown", "json", "text", "txt", "yaml" },
--       -- disabled_filetypes = { "python" },
--     }),
-- }
-- null_ls.setup({ sources = sources })

null_ls.setup({
    sources = {
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.diagnostics.eslint,
      -- null_ls.builtins.completion.spell,
      null_ls.builtins.completion.spell.with({
        filetypes = { "md", "markdown", "json", "text", "txt", "yaml" },
        -- disabled_filetypes = { "python" },
      }), --end completion.spell.with
    },
})

