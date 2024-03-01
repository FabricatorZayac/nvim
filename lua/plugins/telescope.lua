local function builtin() return require("telescope.builtin") end
local function extensions() return require("telescope").extensions end

-- vim.fn.getcwd()
-- vim.fn.environ().HOME

return {
  "nvim-telescope/telescope.nvim",
  lazy = true,

  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-project.nvim",
  },

  keys = {
    { "<leader>pf", function()
      if vim.fn.getcwd() == vim.fn.environ().HOME then
        extensions().project.project()
      else
        builtin().find_files()
      end
    end, desc = "Telescope Find Files" },
    { "<leader>lg", builtin().live_grep, desc = "Telescope Live Grep" },
    { "<leader>bb", builtin().buffers, desc = "Telescope Buffers" },
    { "<leader>fh", builtin().help_tags, desc = "Telescope Help Tags" },
    { "<M-x>", builtin().command_history, desc = "M-x" },
    { "<leader>pp", extensions().project.project, "Telescope project" },
  },

  config = function()
    require("telescope").setup {
      defaults = require("telescope.themes").get_ivy(),
    }
    require("telescope").load_extension("project")
  end,
}
