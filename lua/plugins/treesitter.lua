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

  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = filetypes,

      sync_install = false,
      auto_install = true,
      ignore_install = {},

      modules = {},

      highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}
