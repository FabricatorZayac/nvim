return {
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "tpope/vim-obsession",
  "mbbill/undotree",
  "cohama/lexima.vim",
  "norcalli/nvim-colorizer.lua",
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function() require("todo-comments").setup {} end,
  },
  {
    "aserowy/tmux.nvim",
    config = function() require("tmux").setup() end,
  },
  "hiphish/rainbow-delimiters.nvim",
  {
    "RaafatTurki/hex.nvim",
    config = function () require("hex").setup() end,
  },
}
