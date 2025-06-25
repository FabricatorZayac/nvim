local filetypes = {
  "c",
  "cpp",
  "rust",
  "lua",
  "zig",
  "json",
}

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,

  build = ":TSUpdate",

  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/nvim-treesitter-context",
    "nvim-treesitter/playground",
  },

  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = filetypes,

      sync_install = false,
      auto_install = true,
      ignore_install = {},

      modules = {},

      highlight = {
        enable = true,
        disable = {
          "tex"
        },
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}
