local function builtin() return require('telescope.builtin') end

return {
   'nvim-telescope/telescope.nvim',
   lazy = true,

   branch = '0.1.x',
   dependencies = { 'nvim-lua/plenary.nvim' },

   keys = {
      { "<leader>pf", builtin().find_files, desc = "Telescope Find Files" },
      { "<leader>lg", builtin().live_grep, desc = "Telescope Live Grep" },
      { "<leader>bb", builtin().buffers, desc = "Telescope Buffers" },
      { "<leader>fh", builtin().help_tags, desc = "Telescope Help Tags" },
      { "<M-x>", builtin().command_history, desc = "M-x" },
   },

   config = function()
      require('telescope').setup({
         defaults = require("telescope.themes").get_ivy(),
      })
   end,
}
