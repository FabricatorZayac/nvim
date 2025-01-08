return {
  "ellisonleao/gruvbox.nvim",

  config = function()
    vim.o.background = 'dark'

    require("gruvbox").setup({
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        operators = false,
        comments = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = false, -- invert background for search, diffs, statuslines and errors
      contrast = "hard", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {
        IncSearch = { bg = "#fe8019", fg = "#1d2021" }
      },
      dim_inactive = false,
      transparent_mode = false,
    })

    vim.cmd('colorscheme gruvbox')
  end,
}
