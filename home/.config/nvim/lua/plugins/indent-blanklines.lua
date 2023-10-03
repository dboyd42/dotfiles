return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    -- vim.opt.list = true
    -- vim.opt.listchars:append("space:⋅")  -- add dots b/t 0-^
    vim.opt.listchars:append("eol:↴")       -- add ↴ at EOL

    local hooks = require "ibl.hooks"
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
      vim.api.nvim_set_hl(0, "DraculaPurple", { fg = "#BD93F9" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
    end)

    require("ibl").setup {
      scope = {                 -- :help ibl.config.scope
        enabled = true,
        show_start = true,      -- Shows an underline on the 1st line of scope
        show_end = true,        -- Shows an underline on the last line of scope
        highlight = { "DraculaPurple" }
      }
    }
  end, -- END config = function()
} -- END return
