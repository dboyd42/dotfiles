return {
  {
    "cvigilv/esqueleto.nvim",
    config = function()
      require("esqueleto").setup {
        directories = {"~/.config/nvim/skeletons/"},
        patterns = {
          "cobol",
          "html",
          "markdown",
          "python"
        },
        autouse = true
      }
    end,
    lazy = false,
  },
}
